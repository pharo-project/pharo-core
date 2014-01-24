initialize

	super initialize.
	
	actionWhenActivatedHolder := [] asReactiveVariable.
	actionWhenDesactivatedHolder := [] asReactiveVariable.
	enabledHolder := true asReactiveVariable.
	stateHolder := false asReactiveVariable.
	labelClickableHolder := true asReactiveVariable. 
	labelHolder := '' asReactiveVariable.
	stateHolder whenChangedDo: [:bool |
		bool
			ifTrue: actionWhenActivatedHolder value
			ifFalse: actionWhenDesactivatedHolder value.
		self changed: #state ].
	labelClickableHolder whenChangedDo: [:aBoolean | self changed: { #labelClickable: . aBoolean } ].
	labelHolder whenChangedDo: [:label | self changed: { #label: . label } ].
	