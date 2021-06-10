using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Soulstone.Duality.Plugins.MiniRacing.Cars
{
    public struct CarDimensions
    {
        public float Length { get; set; }
        public float Width { get; set; }

        public float WheelBase { get; set; }
        public float Track { get; set; }

        public float A { get; set; }
        public float B { get; set; }
        public float C { get; set; }
        public float D { get; set; }
    }
}
