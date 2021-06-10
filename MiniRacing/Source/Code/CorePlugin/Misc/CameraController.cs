using Duality;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Soulstone.Duality.Plugins.MiniRacing.Misc
{
    public class CameraController : Component, ICmpUpdatable, ICmpInitializable
    {
        public GameObject Target { get; set; }

        public bool ApplyAngle { get; set; }

        public void OnActivate()
        {
            GameObj.Transform?.MoveTo(Vector2.Zero);
        }

        public void OnDeactivate(){}

        public void OnUpdate()
        {
            if (Target?.Transform == null)
                return;

            GameObj.Transform?.MoveTo(Target.Transform.Pos.Xy);

            if (ApplyAngle)
                GameObj.Transform.TurnTo(Target.Transform.Angle);
        }
    }
}
