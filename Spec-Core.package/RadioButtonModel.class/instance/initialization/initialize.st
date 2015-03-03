initialize

	super initialize.
	actionWhenActivatedHolder := [] asValueHolder.
	actionWhenDesactivatedHolder := [] asValueHolder.
	enabledHolder := true asValueHolder.
	stateHolder := false asValueHolder.
	labelClickableHolder := true asValueHolder. 
	labelHolder := '' asValueHolder.
	stateHolder whenChangedDo: [:bool |
		bool
			ifTrue: actionWhenActivatedHolder value
			ifFalse: actionWhenDesactivatedHolder value.
		self changed: #state ].
	labelClickableHolder whenChangedDo: [:aBoolean | self changed: { #labelClickable: . aBoolean } ].
	labelHolder whenChangedDo: [:label | self changed: { #label: . label } ].
	