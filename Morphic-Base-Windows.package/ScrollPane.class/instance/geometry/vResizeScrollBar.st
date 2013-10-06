vResizeScrollBar
	| w topLeft borderHeight innerWidth |
	w := self scrollBarThickness.
	innerWidth := self flatColoredScrollBarLook
		ifTrue: [ 
			borderHeight := borderWidth.
			0 ]
		ifFalse: [ 
			borderHeight := 0.
			1 ].
	topLeft := retractableScrollBar
		ifTrue: [ bounds topRight - (borderWidth @ (0 - borderHeight)) ]
		ifFalse: [ bounds topRight - ((w + borderWidth - innerWidth) @ (0 - borderHeight)) ].
	scrollBar bounds: (topLeft extent: w @ self vScrollBarHeight)