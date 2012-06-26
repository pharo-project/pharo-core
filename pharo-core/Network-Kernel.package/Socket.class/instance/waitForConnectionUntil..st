deprecated-ROLL OVER BUG
waitForConnectionUntil: deadline
	"Wait up until the given deadline for a connection to be established. Return true if it is established by the deadline, false if not."

	| status |
	status := self primSocketConnectionStatus: socketHandle.
	[(status = WaitingForConnection) and: [Time millisecondClockValue < deadline]]
		whileTrue: [
			semaphore waitTimeoutMSecs: (deadline - Time millisecondClockValue).
			status := self primSocketConnectionStatus: socketHandle].

	^ status = Connected
