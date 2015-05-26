floatObjectOf: floatValue
	"istantiate a floating point object and put a floating point value to it.
	answer that object "
	
	"we can't pass the floating point value in general purpose register,
	see the NBFloat64>>coerceReturnValue: how to do that."
	
	self shouldNotUse.
