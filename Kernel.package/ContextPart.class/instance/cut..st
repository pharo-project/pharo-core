private
cut: aContext
	"Cut aContext and its senders from my sender chain"

	| ctxt callee |
	ctxt := self.
	[ctxt == aContext] whileFalse: [
		callee := ctxt.
		ctxt := ctxt sender.
		ctxt ifNil: [aContext ifNotNil: [self error: 'aContext not a sender']].
	].
	callee privSender: nil.
