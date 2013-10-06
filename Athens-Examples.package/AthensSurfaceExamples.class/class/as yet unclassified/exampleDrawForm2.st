exampleDrawForm2
	| surf font |
		
	surf := self newSurface: 300@300.
	
	surf drawDuring: [:can |
		surf clear.
		can pathTransform loadIdentity.

		can setShape: (0@0 corner: 300@300).
		can setPaint: Color black.
		can draw.
		can pathTransform scaleBy: 0.5;
		 translateX: 60 Y: 60. 
		(can setPaint: ThemeIcons helpIcon) repeat.
		can paintTransform scaleBy: 0.1; rotateByDegrees: 30.
		can draw.
	].
	Display getCanvas drawImage: surf asForm  at: 0@0
