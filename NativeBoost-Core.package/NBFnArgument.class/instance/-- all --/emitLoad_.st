emitLoad: gen
	"emit instructions to load a function argument into default register
	(EAX for integral types, FP(0) for floating point)"
	
	self subclassResponsibility 