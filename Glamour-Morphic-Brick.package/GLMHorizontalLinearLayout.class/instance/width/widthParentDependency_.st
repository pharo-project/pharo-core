widthParentDependency: aBrick
	|allowedWidth|
	aBrick owner ifNil: [ Exception signal: 'My width depends on parent, but it is nil' ].
	allowedWidth := aBrick owner subbricks inject: aBrick owner wrappedBounds innerBounds width into: [ :width :each |
		each wrappedBounds isWidthClean ifTrue: [
			(each isWidthDependsOnParent not | (self hasWidthRestrictions: each))
				ifTrue: [ width - each wrappedBounds outerBounds width ]
				ifFalse: [ width ] ]
			ifFalse: [ width ] ].
	^ (allowedWidth * aBrick layout hPercent / 100) ceiling