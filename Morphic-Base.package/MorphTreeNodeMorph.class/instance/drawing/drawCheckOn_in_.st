drawCheckOn: aCanvas in: aRectangle
	| center offset dRect childSelected |
	
	center := aRectangle center.
	offset := ((self checkWidth) / 2.0) truncated.
	dRect := (center x - offset) @ (center y - offset) corner: (center x + offset) @ (center y + offset).
	childSelected := self isPartialMatch.
	
	self selected 
		ifTrue: [
			aCanvas 
				frameAndFillRectangle: dRect
				fillColor: Color gray 
				borderWidth: 1 
				borderColor: Color black]
		ifFalse: [	
			aCanvas 
					frameAndFillRectangle: dRect
					fillColor: Color white 
					borderWidth: 1 
					borderColor: Color black.
			childSelected
				ifTrue: [ | rect |
					"Add a dash to show the partial selection"
					
					rect := (center x - (offset // 2))@(center y - (offset // 5)) 
						corner: ((center x + (offset // 2))@(center y + (offset // 5))).
					aCanvas
						frameAndFillRectangle: rect
						fillColor: Color gray 
						borderWidth: 0
						borderColor: Color black ] ]