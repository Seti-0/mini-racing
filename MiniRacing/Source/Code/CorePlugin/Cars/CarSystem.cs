using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Drawing;
using Duality.Editor;
using Soulstone.Duality.Plugins.MiniRacing.Physics;

namespace Soulstone.Duality.Plugins.MiniRacing.Cars
{
    [EditorHintCategory(CategoryNames.Cars)]
    [ExecutionOrder(ExecutionRelation.After, typeof(Solid))]
    public  class CarSystem : Component, ICmpUpdatable
    {
        [DontSerialize] private List<Car> _cars = new List<Car>();

        public void Register(Car car)
        {
            _cars.Add(car);
        }

        public void Unregister(Car car)
        {
            if (_cars.Contains(car))
                _cars.Remove(car);
        }

        public void OnUpdate()
        {
            foreach (Car car in _cars)
                ApplyForces(car);
        }

        private void ApplyForces(Car car)
        {
            var specs = car.Specifications.Res;
            var physics = car.Physics;
            var transform = car.Transform;

            if (specs == null || physics == null || transform == null) return;

            var localForce = Vector2.Zero;
            var localVel = transform.GetLocalVector(physics.LinearVelocity);

            if (car.Forwards)
            {
                localForce += specs.EngineForce * (-Vector2.UnitY);
            }
            else if (car.Reverse)
            {
                localForce -= 0.2f * specs.EngineForce * (-Vector2.UnitY);
            }

            var drag = specs.DragConstant * localVel * localVel.Length;
            var rollingResistance = specs.RollingResistanceConstant * localVel;
            localForce += -(drag + rollingResistance);

            physics.ApplyLocalForce(localForce, Vector2.Zero);

            var wheelVectors = new Vector2[]
            {
                new Vector2(specs.Dimensions.C, -specs.Dimensions.A),
                new Vector2(-specs.Dimensions.C, -specs.Dimensions.A),
                new Vector2(specs.Dimensions.D, specs.Dimensions.B),
                new Vector2(-specs.Dimensions.D, specs.Dimensions.B)
            };

            var innerAngle = MathF.DegToRad(specs.TurningAngle);

            var ratio = 2 * specs.Dimensions.D / (specs.Dimensions.A + specs.Dimensions.B);
            var outerAngle = MathF.Atan2(1, (1 / MathF.Tan(innerAngle)) + ratio);

            var wheelAngles = new float[4];

            if (car.TurnRight)
            {
                wheelAngles[0] = innerAngle;
                wheelAngles[1] = outerAngle;
            }
            else if (car.TurnLeft)
            {
                wheelAngles[0] = -outerAngle;
                wheelAngles[1] = -innerAngle;
            }

            //wheelAngles = wheelAngles.Reverse().ToArray();
            //wheelVectors = wheelVectors.Reverse().ToArray();

            for (int i = 0; i < 4; i++)
            {
                var wheelPos = wheelVectors[i];

                var angle = wheelPos.Angle;
                var wheelVel = new Vector2(MathF.Cos(angle), MathF.Sin(angle));
                wheelVel *= physics.AngularVelocity * wheelPos.Length;

                wheelVel += localVel;

                if (wheelVel.Length < 1e-2)
                    continue;

                var wheelDirection = Vector2.FromAngleLength(wheelAngles[i], 1);
                var factor = GetCorneringFactor(Vector2.AngleBetween(wheelDirection, wheelVel), specs);

                var reactionStrength = factor
                    * (specs.CorneringForceConstant + specs.CorneringForceRollConstant * wheelVel.Length);

                if (reactionStrength < 1e-4)
                    continue;

                var wheelNormal = Vector2.FromAngleLength(wheelAngles[i] + MathF.PiOver2, 1);
                var wheelReaction = -Vector2.Dot(wheelNormal, wheelVel) * wheelNormal;
                wheelReaction = Vector2.FromAngleLength(wheelReaction.Angle, reactionStrength);

                DrawLocalVector(transform, wheelDirection * 50, wheelPos)
                    .WithColor(ColorRgba.Blue);

                DrawLocalVector(transform, wheelVel, wheelPos)
                    .WithColor(ColorRgba.Green);

                //DrawLocalVector(transform, wheelReaction * 100, wheelPos)
//.WithColor(ColorRgba.Red);

                physics.ApplyLocalForce(wheelReaction, wheelPos);

                //if (i == 1) break;
            }
        }

        private float GetCorneringFactor(float angle, CarSpecification specs)
        {
            angle = MathF.NormalizeAngle(angle);

            if (angle > MathF.Pi)
            {
                angle -= MathF.Pi;
            }

            var threshold = MathF.DegToRad(specs.CorneringThreshold);

            if (angle < threshold)
                return angle / threshold;

            if (angle > MathF.Pi - threshold)
                return (MathF.Pi - angle) / threshold;

            return 1;
        }

        private VisualLogEntry DrawLocalVector(Transform transform, Vector2 vector, Vector2 offset)
        {
            var camera = Scene.FindComponent<Camera>();
            var a = camera.GetScreenPos(transform.GetWorldPoint(offset));
            var b = camera.GetScreenPos(transform.GetWorldPoint(offset + (vector)));
            return VisualLogs.Default.DrawVector(a, b - a);
        }

        private void ApplyCorneringForce(Car car, CarSpecification specs, RigidBody physics, 
            Transform transform, Vector2 localVel)
        {
            
        }
    }
}
