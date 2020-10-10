# Assignment 2

A new Flutter project.

## Button Functionality

In our class demonstrations we went over the Switch Widget and used it to enable and disable a Material Button. Two screen shots from that demo are presented below, and the code is available on github.

Your assignment is to take this demo app and add to it as described below. Screen shots for the new and improved app are shown below.

The new app is to disable both a red and blue button when the app starts and when the switch is in the false position.

When the switch is in the true position both the red and blue buttons appear and are functional.

If the switch is in the true position and if the red button has not been pressed yet, its text should say “Click Me”, but every time it is pressed its text will be updated to reflect the number of times that it has been clicked (ie: “Clicked 3”).

If the switch is in the true position and if the blue button is pressed, the red button counter will be reset, and the red button will once again say “Click Me”.

At any time that the enable functionality switch is put in the false position, both buttons will disappear and of course become disabled. The red button count will not be lost though, so that when the switch is toggled to the true position once again, the red and blue buttons will appear, and the red buttons text will reflect how many times it has been pressed. As mentioned before, if the red button has not been pressed, or has been reset, then the red button text should say “Click Me”.
