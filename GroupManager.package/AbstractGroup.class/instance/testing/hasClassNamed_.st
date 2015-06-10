hasClassNamed: aClassName
	^ self classes anySatisfy: [ :c | c name = aClassName ]