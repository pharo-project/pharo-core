drawOn: aCanvas
	| first last |

	aCanvas
		fillRectangle: self fullBounds
		color: self drawColor.
	
	first := self topVisibleIndexForCanvas: aCanvas.
	last := self bottomVisibleIndexForCanvas: aCanvas.
	self listSize isZero ifTrue: [ last := 0 ].
	
	first
		to: last 
		do: [ :index || item |
			item := self itemAtIndex: index.
			self drawBackgroundForItem: item at: index on: aCanvas.
			self drawItem: item at: index on: aCanvas.
			(self separatorAfter: item at: index)
				ifTrue: [ self drawSeparatorForItem: item at: index on: aCanvas ]].
		
	self hasHeader ifTrue: [ self drawHeaderOn: aCanvas ].