accessing
signalerContext
	"Find the first sender of signal(:)"

	^ signalContext findContextSuchThat: [ :ctxt |
		(ctxt receiver == self or: [ ctxt receiver == self class ]) not ]