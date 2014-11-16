restoreResumptionTimes
	"Private! Restore the resumption times of all scheduled Delays after a snapshot or clock roll-over. This method should be called only while the AccessProtect semaphore is held."

	| newBaseTime |
	newBaseTime := Time millisecondClockValue.
	suspendedDelays do: [ :delay | 
		delay adjustResumptionTimeOldBase: 0 newBase: newBaseTime ].
	activeDelay == nil ifFalse: [
		activeDelay adjustResumptionTimeOldBase: 0 newBase: newBaseTime ].
