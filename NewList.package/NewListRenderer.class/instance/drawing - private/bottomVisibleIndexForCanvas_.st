bottomVisibleIndexForCanvas: aCanvas
        "return the top visible index in aCanvas's clip rectangle"
        
	 | rect |
	rect := aCanvas clipRect.
	^self indexAtLocation: (rect left @ rect bottom + self headerHeight).