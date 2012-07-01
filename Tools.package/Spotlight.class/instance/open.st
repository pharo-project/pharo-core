showing
open
	self left: Display width - self width.
	self top: 0.
	super openInWorld.
	search takeKeyboardFocus.
	opened := true.
