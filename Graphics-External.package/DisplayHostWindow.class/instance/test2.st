testing
test2
	"((DisplayHostWindow extent: 400 @ 400 depth: 16 ) translateBy: 210 @ 450) test2"
	"Should
		a) open a window with the upper left portion of the current Display
		b) update the middle area with part of Display
		c) move the window from 210 @ 450 to 300 @ 300
		d) change the window title
		e) change the window size from 400 @ 400 to 600 @ 400
		f) wait 4 seconds so you can see the result
		g) close the window via the garbage collecttor finalizing it"
	self open.
	Display displayOn: self.
	self forceToScreen.
	Display displayOn: self at: -100 @ -200.
	self forceToScreen: (100 @ 100 extent: 200 @ 200).
	self windowPosition: 300 @ 300.
	self windowTitle: 'YooHoo! New title'.
	self windowSize: 600 @ 400.
	(Delay forSeconds: 4) wait.