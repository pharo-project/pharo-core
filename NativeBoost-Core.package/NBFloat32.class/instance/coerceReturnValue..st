emitting code
coerceReturnValue: gen

	"return value in ST(0)"
	
	NBFloat64 new pushValue: gen.
	gen proxy gatedCallFn: #floatObjectOf: .

	