terminateTo: previousContext value: aReturnValue
	"Terminate all the Contexts between me and previousContext, if previousContext is on my Context stack. Make previousContext my sender."

	<reflective: #contextTerminateTo:message:>
	
	PrimitiveFailed signal.
	