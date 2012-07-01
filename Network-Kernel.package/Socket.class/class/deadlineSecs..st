deprecated-ROLL OVER PROBLEM
deadlineSecs: secs
	"Return a deadline time the given number of seconds from now."

	^ Time millisecondClockValue + (secs * 1000) truncated
