displaying-generic
followCursor
	"Just show the Form following the mouse. 6/21/96 tk"
	Cursor blank showWhile:
		[self follow: [Sensor cursorPoint] while: [Sensor noButtonPressed]]
