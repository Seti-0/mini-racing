using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Drawing;
using Duality.Editor;
using Soulstone.Duality.Plugins.MiniRacing.Cars;

namespace Soulstone.Duality.Plugins.MiniRacing.Physics
{
    [EditorHintCategory(CategoryNames.Physics)]
    [ExecutionOrder(ExecutionRelation.Before, typeof(SpriteRenderer))]
    public class Solid : Component, ICmpUpdatable
    {
        [DontSerialize] private List<Vector2> _forces = new List<Vector2>();
        [DontSerialize] private List<Vector2> _positions = new List<Vector2>();

        public Vector2 LinearVelocity { get; set; }

        public float AngularVelocity { get; set; }

        public float Mass { get; set; }

        public float Inertia { get; set; }

        public void ApplyLocalForce(Vector2 force, Vector2 position)
        {
            _forces.Add(force);
            _positions.Add(position);
        }

        public void OnUpdate()
        {
            var transform = GameObj.Transform;

            if (transform == null)
            {
                Logs.Game.WriteError("Cannot apply forces. No transform found.");
                return;
            }

            if (Mass == 0)
            {
                Logs.Game.WriteError("Cannot apply forces. Mass is zero.");
                return;
            }

            /*for (int i = 0; i < _forces.Count; i++)
            {
                _forces[i] = transform.GetWorldVector(_forces[i]);
                _positions[i] = transform.GetWorldPoint(_positions[i]);
            }*/

            Vector2 localAccel = Vector2.Zero;
            float localAAccel = 0;

            for (int i = 0; i < _forces.Count; i++)
            {
                localAccel += _forces[i] / Mass;

                var normal = _positions[i]
                    .PerpendicularLeft
                    .Normalized;

                var torque = Vector2.Dot(normal, _forces[i]);

                localAAccel += -torque / Inertia;

                DrawLocalVector(_forces[i], _positions[i], 
                    new ColorRgba(255, 0, 0));

                DrawLocalVector(_positions[i], Vector2.Zero,
                    new ColorRgba(0, 255, 255));

                DrawLocalVector(normal, _positions[i],
                    new ColorRgba(255, 255, 0));

                DrawLocalVector(torque * normal, _positions[i], 
                    new ColorRgba(255, 0, 255));
            }

            _forces.Clear();
            _positions.Clear();

            localAccel = transform.GetWorldVector(localAccel);

            LinearVelocity += localAccel * Time.DeltaTime;
            AngularVelocity += localAAccel * Time.DeltaTime;

            DrawLocalVector(transform.GetLocalVector(LinearVelocity), Vector2.Zero, 
                new ColorRgba(0, 255, 0));

            var pos = transform.Pos.Xy;
            pos += LinearVelocity * Time.DeltaTime;
            transform.Pos = new Vector3(pos);

            transform.Angle += AngularVelocity * Time.DeltaTime;

            DrawDebug();
        }

        private List<Vector2> _debugVectors = new List<Vector2>();
        private List<Vector2> _debugOffsets = new List<Vector2>();
        private List<ColorRgba> _debugColors = new List<ColorRgba>();

        private void DrawLocalVector(Vector2 vector, Vector2 offset, ColorRgba color)
        {
            _debugVectors.Add(vector);
            _debugOffsets.Add(offset);
            _debugColors.Add(color);
        }

        private void DrawDebug()
        {
            for (int i = 0; i < _debugColors.Count; i++)
            {
                var offset = _debugOffsets[i];
                var vector = _debugVectors[i];
                var color = _debugColors[i];

                var transform = GameObj.Transform;
                var camera = Scene.FindComponent<Camera>();
                var a = camera.GetScreenPos(transform.GetWorldPoint(offset));
                var b = camera.GetScreenPos(transform.GetWorldPoint(offset + (vector * 1)));
                VisualLogs.Default.DrawVector(a, b - a)
                    .WithColor(color);
            }

            _debugColors.Clear();
            _debugOffsets.Clear();
            _debugVectors.Clear();
        }
    }
}
