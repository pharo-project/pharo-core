system simulation
stepToSendOrReturn
	"Simulate the execution of bytecodes until either sending a message or 
	returning a value to the receiver (that is, until switching contexts)."

	| ctxt |
	[self willSend | self willReturn | self willStore]
		whileFalse: [
			ctxt := self step.
			ctxt == self ifFalse: [self halt. 
				"Caused by mustBeBoolean handling"
				^ctxt]]