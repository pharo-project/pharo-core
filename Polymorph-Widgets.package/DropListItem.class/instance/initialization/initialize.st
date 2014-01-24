initialize

	super initialize.

	actionHolder := [] asReactiveVariable.
	displayBlock := [ :e | e printString ].
	icon := nil