system simulation
stepToCallee
	"Step to callee or sender"

	| ctxt |
	ctxt := self.
	[(ctxt := ctxt step) == self] whileTrue.
	^ ctxt