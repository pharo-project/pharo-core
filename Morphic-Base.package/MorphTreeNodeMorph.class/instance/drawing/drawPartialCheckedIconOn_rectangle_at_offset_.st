drawPartialCheckedIconOn: aCanvas rectangle: dRect at: center offset: offset
	| icon |
	
	icon := Smalltalk ui icons partialCheckedBoxIcon.
	
	icon 
		ifNil: [ | rect |
			aCanvas
				frameAndFillRectangle: dRect
				fillColor: Color white
				borderWidth: 1
				borderColor: Color black.
			
			"Add a dash to show the partial selection"
			rect := (center x - (offset // 2)) @ (center y - (offset // 5))
				corner: (center x + (offset // 2)) @ (center y + (offset // 5)).
			aCanvas
				frameAndFillRectangle: rect
				fillColor: Color gray
				borderWidth: 0
				borderColor: Color black ]
		ifNotNil: [
			aCanvas
				drawImage: icon
				at: (dRect topLeft) - (0@1) ]