drawCheckedIconOn: aCanvas at: dRect
	| icon |
	
	icon := Smalltalk ui icons checkedBoxIcon.
	icon 
		ifNil: [ 
			aCanvas
				frameAndFillRectangle: dRect
				fillColor: Color gray
				borderWidth: 1
				borderColor: Color black ]
		ifNotNil: [
			aCanvas
				drawImage: icon
				at: (dRect topLeft) - (0@1)]