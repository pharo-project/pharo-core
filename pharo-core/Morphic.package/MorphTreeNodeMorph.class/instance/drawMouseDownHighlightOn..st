drawing
drawMouseDownHighlightOn: aCanvas
	"Draw with a dotted border."
	
	self highlightedForMouseDown 
		ifTrue: [
			container ifNil: [^super drawMouseDownHighlightOn: aCanvas].
			aCanvas 
				frameRectangle: self selectionFrame
				width: 1
				colors: {container mouseDownHighlightColor. Color transparent}
				dashes: #(1 1)]