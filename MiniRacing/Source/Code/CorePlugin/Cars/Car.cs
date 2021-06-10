using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Components;
using Duality.Input;
using Duality.Editor;
using Duality.Components.Physics;

using Soulstone.Duality.Plugins.MiniRacing.Physics;

namespace Soulstone.Duality.Plugins.MiniRacing.Cars
{
    [EditorHintCategory(CategoryNames.Cars)]
    [RequiredComponent(typeof(RigidBody))]
    [ExecutionOrder(ExecutionRelation.Before, typeof(CarSystem))]
    public class Car : Component, ICmpInitializable, ICmpUpdatable
    {
        public ContentRef<CarSpecification> Specifications { get; set; }

        public bool Forwards { get; set; }

        public bool Reverse { get; set; }

        public bool TurnRight { get; set; }

        public bool TurnLeft { get; set; }

        public Transform Transform
        {
            get => GameObj?.Transform;
        }

        public Solid Physics
        {
            get => GameObj?.GetComponent<Solid>();
        }

        public void OnActivate()
        {
            Scene.FindComponent<CarSystem>()
                ?.Register(this);
        }

        public void OnDeactivate()
        {
            Scene.FindComponent<CarSystem>()
                ?.Unregister(this);
        }


        public void OnUpdate()
        {
            var specs = Specifications.Res;

            if (specs == null)
                return;

            var physics = Physics;
            if (physics != null)
            {
                physics.Mass = specs.Mass;
                physics.Inertia = specs.Inertia;
            }
        }
    }
}
