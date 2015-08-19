visitJoyButtonDownEvent: joyEvent
	^ OSJoyButtonDownEvent new
		which: joyEvent which;
		button: joyEvent button;
		pressed: true