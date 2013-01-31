special context access
exceptionHandlerIsActive
	"handlercontext only. access temporaries from BlockClosure>>on: do:"
	^self tempAt: 3
