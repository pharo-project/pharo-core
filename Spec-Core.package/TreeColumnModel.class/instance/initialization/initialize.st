initialize

	super initialize.

	container := nil asReactiveVariable.
	displayBlock := [ :node | node printString ] asReactiveVariable.
	initialWidth := 100 asReactiveVariable.
	resizable := true asReactiveVariable.
	headerLabel := nil asReactiveVariable.
	headerFont := StandardFonts defaultFont asReactiveVariable.
	headerIcon := nil asReactiveVariable.
	headerAction := nil asReactiveVariable.
	
	self registerEvents