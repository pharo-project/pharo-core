buildRectFrom: rect

	| top bottom right left |
	top := (rect bottom - StandardFonts defaultFont height - 4).
	bottom := rect bottom.
	right := rect right.
	left := right - ((self textSize printString size+1)*(self basicWidth)).
	self vIsScrollbarShowing 
		ifTrue: [ 
			right := right - scrollBar width.
			left := left - scrollBar width ].
	
	^ (left-5@top corner: right-5@bottom)