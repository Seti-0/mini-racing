using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Soulstone.Duality.Plugins.MiniRacing
{
    public static class Units
    {
        private const float MetersToDuality = 33,
                            KilogramsToDuality = 1;
                            //NewtonsToDuality = 1;

                            //Probably won't ever use this
                            //SecondsToDuality = 1;

        public static float LengthToDuality(float meters)
        {
            return MetersToDuality * meters;
        }

        public static float LengthFromDuality(float length)
        {
            return length / MetersToDuality;
        }

        public static Vector2 LengthToDuality(Vector2 meters)
        {
            return MetersToDuality * meters;
        }

        public static Vector2 LengthFromDuality(Vector2 length)
        {
            return length / MetersToDuality;
        }

        public static float MassToDuality(float kgs)
        {
            return KilogramsToDuality * kgs;
        }

        public static float MassFromDuality (float mass)
        {
            return mass / KilogramsToDuality;
        }

        public static float IntertiaToDuality(float kgm2)
        {
            return KilogramsToDuality * MetersToDuality * MetersToDuality * kgm2;
        }

        public static float IntertiaFromDuality(float intertia)
        {
            return intertia / (KilogramsToDuality * MetersToDuality * MetersToDuality);
        }

        /*
        public static Vector2 ForceToDuality(Vector2 newtons)
        {
            return newtons * NewtonsToDuality;
        }

        public static Vector2 ForceFromDuality(Vector2 force)
        {
            return force / NewtonsToDuality;
        }
        */
    }
}
