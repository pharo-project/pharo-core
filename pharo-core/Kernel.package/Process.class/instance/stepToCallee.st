changing suspended state
stepToCallee
	"Step until top context changes"

	| ctxt |
	ctxt := suspendedContext.
	[ctxt == suspendedContext] whileTrue: [
		suspendedContext := suspendedContext step].
	^ suspendedContext