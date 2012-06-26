deprecated-ROLL OVER BUG
waitForAcceptUntil: deadLine
	"Wait and accept an incoming connection"
	self waitForConnectionUntil: deadLine.
	^self isConnected
		ifTrue:[self accept]
		ifFalse:[nil]