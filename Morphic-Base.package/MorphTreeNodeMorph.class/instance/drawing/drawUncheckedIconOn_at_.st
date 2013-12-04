drawUncheckedIconOn: aCanvas at: dRect
	| icon |
	
	icon := Smalltalk ui icons uncheckedBoxIcon.
	icon 
		ifNil: [ 
			aCanvas
				frameAndFillRectangle: dRect
				fillColor: Color white
				borderWidth: 1
				borderColor: Color black. ]
		ifNotNil: [ 
			aCanvas
				drawImage: icon
				at: (dRect topLeft) - (0@1)]