addAnEmptyDynamicGroupNamed: aName

	^ (self addADynamicGroupNamed: aName block: [ {} ])
			isFillable: true;
			yourself