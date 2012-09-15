displaying-generic
followCursor
	"Just show the Form following the mouse."
	Cursor blank showWhile:
		[self follow: [Sensor cursorPoint] while: [Sensor noButtonPressed]]
