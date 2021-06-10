using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Editor;

namespace Soulstone.Duality.Plugins.MiniRacing.Cars
{
    [EditorHintCategory(CategoryNames.Cars)]
    public class CarSpecification : Resource
    {
        public float Mass { get; set; } = 1465;

        public float Inertia { get; set; } = 8 * 1465;

        [EditorHintFlags(MemberFlags.Invisible)]
        public float Weight => Mass * 9.8f;

        public float RollingResistanceConstant { get; set; }  = 1;

        public float DragConstant { get; set; } = 0.2f;

        public float EngineForce { get; set; } = 8000;

        public float BrakeForce { get; set; } = 2000;

        public float CorneringForceConstant { get; set; } = 1;

        public float CorneringForceRollConstant { get; set; } = 1;

        public float CorneringThreshold { get; set; } = 10;

        public float TurningAngle { get; set; } = 30;

        public CarDimensions Dimensions { get; set; } = new CarDimensions()
        {
            Length = 4.5f,
            Width = 1.8f,

            WheelBase = 1.3f,
            Track = 1.5f,

            A = 1.3f,
            B = 1.3f,
            C = 0.75f,
            D = 0.75f
        };
    }
}
