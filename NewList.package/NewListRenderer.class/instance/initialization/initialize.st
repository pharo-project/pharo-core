initialize

	super initialize.
	
	wantsSteps := false.
	listSource := nil asReactiveVariable.
	itemHeight := nil asReactiveVariable.
	maxWidth := 0 asReactiveVariable.
	hasHeader := false asReactiveVariable.
	potentialDropIndex := 0 asReactiveVariable.
	steppingTime := 100.
	mouseDownIndex := 0 asReactiveVariable.
	listSource whenChangedDo: [:e | 
		itemHeight value: e itemHeight.
		e whenItemsChangedDo: [ maxWidth value: 0 ]].
	potentialDropIndex whenChangedDo: [:new :old | self updateRectFor: new and: old ].
	mouseDownIndex whenChangedDo: [:new :old |
		(old ~~ 0 and: [ new ~~ 0 ]) 
			ifTrue: [ self updateRectFor: old and: new ]
			ifFalse: [
				old isZero ifFalse: [self updateRectFor: old ].
				new isZero ifFalse: [self updateRectFor: new ]]].