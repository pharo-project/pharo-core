extentOf: aBrick in: owner withArguments: aHashTable
	| width requestedWidth allowedWidth minWidth maxWidth distributableWidth distributablePercents|
	
	minWidth := self minWidthOf: aBrick.
	maxWidth := self maxWidthOf: aBrick.
	distributableWidth := aHashTable at: #distributableWidth ifAbsent: [ owner innerBounds width ].
	distributablePercents := aHashTable at: #distributablePercents ifAbsent: [ 100 ].
	
	allowedWidth := self widthOf: aBrick allowed: distributableWidth percents: distributablePercents.
	requestedWidth := self widthOf: aBrick allowed: owner innerBounds width percents: 100.
	
	width := (requestedWidth < minWidth ifTrue: [ minWidth ] ifFalse: [ allowedWidth min: maxWidth ]) - aBrick layoutProperties horizontalMargin.
	
	^ width@(self originalHeightOf: aBrick)