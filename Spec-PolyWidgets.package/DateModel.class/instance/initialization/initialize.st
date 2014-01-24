initialize

	displayBlockHolder := [ :object | object asStringOrText ] asReactiveVariable.
	displayBlockHolder whenChangedDo: [ self date: self date ].
	super initialize. "do this last so default will be set after displayBlock"