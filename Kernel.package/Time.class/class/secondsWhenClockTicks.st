clock
secondsWhenClockTicks

	"waits for the moment when a new second begins"

	| lastSecond |

	lastSecond := self primSecondsClock.
	[ lastSecond = self primSecondsClock ] whileTrue: [ (Delay forMilliseconds: 1) wait ].
 
	^ lastSecond + 1 