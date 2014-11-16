saveResumptionTimes
	"Private! Record the resumption times of all Delays relative to a base time of zero. This is done prior to snapshotting or adjusting the resumption times after a clock roll-over. This method should be called only while the AccessProtect semaphore is held."

	| oldBaseTime |
self newCodeEnabled 
  ifTrue: [
	self shouldNotImplement.
	]
  ifFalse: [
	oldBaseTime := Time millisecondClockValue.
	ActiveDelay == nil
		ifFalse: [
			oldBaseTime < ActiveDelayStartTime
				ifTrue: [ oldBaseTime := ActiveDelayStartTime ].  "clock rolled over"
			ActiveDelay adjustResumptionTimeOldBase: oldBaseTime newBase: 0 ].
		
	SuspendedDelays do: [ :delay |
		delay adjustResumptionTimeOldBase: oldBaseTime newBase: 0 ].

	].

