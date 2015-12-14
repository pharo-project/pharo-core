x11Draw
	"X11Display x11Draw"
	| display window gc nextPt lastPt ptr |
	display := X11Display XOpenDisplay: nil.
	window = display ourWindow.
	gc := X11GC on: window.
	gc foreground: 0.
	lastPt := nil.
	[ptr := display queryPointer: window.	"{root. child. root pos. win pos. mask}"
	ptr last anyMask: 256] whileFalse:[
		nextPt := ptr fourth.
		nextPt = lastPt ifFalse:[
			lastPt ifNotNil: [
				gc drawLineFrom: lastPt to: nextPt.
				display sync].
			lastPt := nextPt].
	].
	gc free.
	display closeDisplay.
	Display forceToScreen.