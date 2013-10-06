coerceReturnValue: gen

	"return value in ST(0)"
	
	self pushValue: gen.
	gen proxy gatedCallFn: #floatObjectOf: .
