deprecated-ROLL OVER BUG
waitForDisconnectionUntil: deadline
	"Wait for the given nr of seconds for the connection to be broken.
	Return true if it is broken by the deadline, false if not.
	The client should know the connection is really going to be closed
	(e.g., because he has called 'close' to send a close request to the other end)
	before calling this method."
	| status |
	status := self primSocketConnectionStatus: socketHandle.
	[((status == Connected) or: [(status == ThisEndClosed)]) and:
	 [Time millisecondClockValue < deadline]] whileTrue: [
		self discardReceivedData.
		self readSemaphore waitTimeoutMSecs: (deadline - Time millisecondClockValue).
		status := self primSocketConnectionStatus: socketHandle].

	^ status ~= Connected