stepToSendOrReturn
	"Simulate the execution of bytecodes until either sending a message or 
	returning a value to the receiver (that is, until switching contexts)."

	| context |
	[ self willSend | self willReturn | self willStore ]
		whileFalse: [
			context := self step.
			context == self ifFalse: [
				self halt. 
				"Caused by mustBeBoolean handling"
				^context ]]