special context access
exceptionHandlerIsActive: aBool
	"handlercontext only. access temporaries from BlockClosure>>on: do:"
	self tempAt: 3 put: aBool
