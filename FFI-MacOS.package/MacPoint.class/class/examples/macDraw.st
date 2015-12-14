macDraw
	"MacPoint macDraw"
	| pt |
	pt := self new.
	pt getMousePoint.
	self moveTo: pt.
	[Sensor anyButtonPressed] whileFalse:[
		pt getMousePoint.
		self lineTo: pt.
	].
	Display forceToScreen.