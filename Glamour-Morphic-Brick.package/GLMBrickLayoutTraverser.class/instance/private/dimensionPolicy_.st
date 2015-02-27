dimensionPolicy: aBrick

	^ ((self isDependsOnParent: aBrick)
		ifTrue: [
			aBrick owner
				ifNil: [ aBrick ]
				ifNotNil: [ :owner |
					owner isBrick
						ifTrue: [ owner ]
						ifFalse: [ aBrick ] ] ]
		ifFalse: [ aBrick ])
		layoutPolicy