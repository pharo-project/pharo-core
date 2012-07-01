deprecated-ROLL OVER BUG
waitForDataUntil: deadline ifClosed: closedBlock ifTimedOut: timedOutBlock
	"Wait for the given nr of seconds for data to arrive."
	[Time millisecondClockValue < deadline]
		whileTrue: [(self primSocketReceiveDataAvailable: socketHandle) ifTrue: [^self].
					self isConnected ifFalse: [^closedBlock value].
					self readSemaphore waitTimeoutMSecs: (deadline - Time millisecondClockValue)].
	(self primSocketReceiveDataAvailable: socketHandle)
		ifFalse: [self isConnected
					ifTrue: [^timedOutBlock value]
					ifFalse: [^closedBlock value]]