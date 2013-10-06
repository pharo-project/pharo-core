interpret: anIr
	self pushScope: anIr.
	anIr optimize.
	gen irPrimitive: anIr irPrimitive.
	gen numArgs: anIr numArgs.
	gen properties: anIr properties.
	gen numTemps: (anIr tempMap size).
	gen additionalLiterals: anIr additionalLiterals.
	gen forceLongForm: anIr forceLongForm.
	super interpret: anIr.
