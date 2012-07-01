general inquiries
millisecondsToRun: timedBlock 
	"Answer the number of milliseconds timedBlock takes to return its value."

	| initialMilliseconds |
	initialMilliseconds := self millisecondClockValue.
	timedBlock value.
	^self millisecondsSince: initialMilliseconds