printing
longPrintOn: stream

	| ctxt |
	super printOn: stream.
	stream cr.
	ctxt := self suspendedContext.
	[ctxt == nil] whileFalse: [
		stream space.
		ctxt printOn: stream.
		stream cr.
		ctxt := ctxt sender.
	].
