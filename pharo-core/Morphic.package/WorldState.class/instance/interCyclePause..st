update cycle
interCyclePause: milliSecs
	"delay enough that the previous cycle plus the amount of delay will equal milliSecs.  If the cycle is already expensive, then no delay occurs.  However, if the system is idly waiting for interaction from the user, the method will delay for a proportionally long time and cause the overall CPU usage of Squeak to be low.
	If self serverMode returns true then, always do a complete delay of 50ms, independant of my argument. This prevents the freezing problem described in Mantis #6581"

	| currentTime wait |
	self serverMode
		ifFalse: [
			(lastCycleTime notNil and: [CanSurrenderToOS ~~ false]) ifTrue: [ 
				currentTime := Time millisecondClockValue.
				wait := lastCycleTime + milliSecs - currentTime.
				(wait > 0 and: [ wait <= milliSecs ] ) ifTrue: [
					(Delay forMilliseconds: wait) wait ] ] ]
		ifTrue: [ (Delay forMilliseconds: 50) wait ].

	lastCycleTime := Time millisecondClockValue.
	CanSurrenderToOS := true.