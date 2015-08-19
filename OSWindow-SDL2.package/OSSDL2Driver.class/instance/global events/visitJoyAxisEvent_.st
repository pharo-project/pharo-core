visitJoyAxisEvent: joyEvent
	^ OSJoyAxisEvent new
		which: joyEvent which;
		axis: joyEvent axis;
		value: joyEvent value