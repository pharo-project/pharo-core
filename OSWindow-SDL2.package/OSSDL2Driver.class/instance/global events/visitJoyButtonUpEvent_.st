visitJoyButtonUpEvent: joyEvent
	^ OSJoyButtonUpEvent new
		which: joyEvent which;
		button: joyEvent button;
		pressed: false