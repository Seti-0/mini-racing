using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Editor;
using Duality.Input;

namespace Soulstone.Duality.Plugins.MiniRacing.Cars
{
    [RequiredComponent(typeof(Car))]
    [EditorHintCategory(CategoryNames.Cars)]
    public class CarController : Component, ICmpUpdatable
    {
        public void OnUpdate()
        {
            var car = GameObj.GetComponent<Car>();

            car.Forwards = DualityApp.Keyboard.KeyPressed(Key.W);
            car.Reverse = DualityApp.Keyboard.KeyPressed(Key.S);
            car.TurnLeft = DualityApp.Keyboard.KeyPressed(Key.A);
            car.TurnRight = DualityApp.Keyboard.KeyPressed(Key.D);
        }
    }
}
