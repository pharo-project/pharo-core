examples
exampleTwo
	"This is to test painting with a gray tone. It also tests that the seaming with gray patterns is correct in the microcode. Lets you paint for a while and then automatically stops. This only works at Depth of 1."
	"create a small black Form source as a brush. "
	| f aBitBlt displayDepth |
	displayDepth := Display depth.
	Display newDepth: 1.
	f := Form extent: 20 @ 20.
	f fillBlack.
	"create a BitBlt which will OR gray into the display. "
	aBitBlt := BitBlt 
		destForm: Display
		sourceForm: f
		fillColor: Color gray
		combinationRule: Form over
		destOrigin: Sensor cursorPoint
		sourceOrigin: 0 @ 0
		extent: f extent
		clipRect: Display computeBoundingBox.
	"paint the gray Form on the screen for a while. "
	[ Sensor anyButtonPressed ] whileFalse: 
		[ aBitBlt destOrigin: Sensor cursorPoint.
		aBitBlt copyBits ].
	Display newDepth: displayDepth
	"BitBlt exampleTwo"