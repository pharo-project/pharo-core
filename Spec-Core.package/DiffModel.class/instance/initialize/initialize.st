initialize

	super initialize.
	
	leftTextHolder := '' asReactiveVariable.
	rightTextHolder := '' asReactiveVariable.
	contextClassHolder := nil asReactiveVariable.
	showOptions := true asReactiveVariable.
	showOnlyDestination := false asReactiveVariable.
	showOnlySource := false asReactiveVariable.	
		
	leftTextHolder whenChangedDo: [ :newText | self changed: #leftText: with: { newText } ].
	rightTextHolder whenChangedDo: [ :newText | self changed: #rightText: with: { newText } ].
	contextClassHolder whenChangedDo: [ :newClass | self changed: #contextClass: with: { newClass } ].	
	showOptions whenChangedDo: [ :aBoolean | self changed: #showOptions: with: { aBoolean }].	
	showOnlyDestination whenChangedDo: [:aBoolean | self changed: #showOnlyDestination: with: { aBoolean } ].
	showOnlySource whenChangedDo: [:aBoolean | self changed: #showOnlySource: with: { aBoolean } ]