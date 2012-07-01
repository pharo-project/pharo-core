query
findContextSuchThat: testBlock
	"Search self and my sender chain for first one that satisfies testBlock.  Return nil if none satisfy"

	| ctxt |
	ctxt := self.
	[ctxt isNil] whileFalse: [
		(testBlock value: ctxt) ifTrue: [^ ctxt].
		ctxt := ctxt sender.
	].
	^ nil