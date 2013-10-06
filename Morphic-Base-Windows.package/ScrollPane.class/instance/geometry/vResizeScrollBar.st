vResizeScrollBar
	| w topLeft borderHeight innerWidth |
	w := self scrollBarThickness.
	innerWidth := self flatColoredScrollBarLook 
		ifTrue: 
			[borderHeight := borderWidth.
			0]
		ifFalse: 
			[borderHeight := 0.
			 1].
	topLeft := scrollBarOnLeft 
				ifTrue: 
					[retractableScrollBar 
						ifTrue: [bounds topLeft - ((w - borderWidth) @ (0 - borderHeight))]
						ifFalse: [bounds topLeft + ((borderWidth - innerWidth) @ borderHeight)]]
				ifFalse: 
					[retractableScrollBar 
						ifTrue: [bounds topRight - (borderWidth @ (0 - borderHeight))]
						ifFalse: 
							[bounds topRight - ((w + borderWidth - innerWidth) @ (0 - borderHeight))]].
			
	scrollBar 
		bounds: (topLeft extent: w @ self vScrollBarHeight)
	
