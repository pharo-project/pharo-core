extentOf: aBrick in: owner withArguments: aHashTable
	| height requestedHeight allowedHeight minHeight maxHeight distributableHeight distributablePercents|
	
	minHeight := self minHeightOf: aBrick.
	maxHeight := self maxHeightOf: aBrick.
	distributableHeight := aHashTable at: #distributableHeight ifAbsent: [ owner brickInnerBounds height ].
	distributablePercents := aHashTable at: #distributablePercents ifAbsent: [ 100 ].
	
	allowedHeight := self heightOf: aBrick allowed: distributableHeight percents: distributablePercents.
	requestedHeight := self heightOf: aBrick allowed: owner brickInnerBounds width percents: 100.
	
	height := (requestedHeight < minHeight ifTrue: [ minHeight ] ifFalse: [ allowedHeight min: maxHeight ]) - aBrick layoutProperties verticalMargin.
	
	^ (self originalWidthOf: aBrick)@height