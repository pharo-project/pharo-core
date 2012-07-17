instance creation
now 
	" 
	[ 10000 timesRepeat: [ self now. ] ] timeToRun / 10000.0 . 

	If calls to DateAndTime-c-#now are within a single millisecond the semaphore code 
	to ensure that (self now <= self now) slows things down considerably by a factor of about 20.

	The actual speed of a single call to DateAndTime-now in milliseconds is 
	demonstrated by the unguarded method below.

	[ 100000 timesRepeat: [ self todayAtMilliSeconds: (self milliSecondsSinceMidnight) ] ] timeToRun / 100000.0 .  0.00494 0.00481 0.00492 0.00495
	  
	"
	| nanoTicks msm |

	nanoTicks := (msm := self milliSecondsSinceMidnight) * 1000000.

	(LastTick < nanoTicks) ifTrue: [
		LastTick := nanoTicks.
		^ self todayAtMilliSeconds: msm].

	LastTickSemaphore critical: [
		LastTick :=  LastTick + 1.
		^ self todayAtNanoSeconds: LastTick]