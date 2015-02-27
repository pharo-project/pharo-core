heightParentDependency: aBrick
	| allowedHeight |
	aBrick owner ifNil: [ Exception signal: 'My height depends on parent, but it is nil' ].
	allowedHeight := aBrick owner subbricks inject: aBrick owner wrappedBounds innerBounds height into: [ :height :each |
		each wrappedBounds isHeightClean ifTrue: [
			(each isHeightDependsOnParent not | (self hasHeightRestrictions: each))
				ifTrue: [ height - each wrappedBounds outerBounds height ]
				ifFalse: [ height ] ]
			ifFalse: [ height ] ].
	^ (allowedHeight * aBrick layout vPercent / 100) ceiling