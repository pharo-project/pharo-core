handleTimerEvent: nowTick
	"Handle a timer event; which can be either:
		- a schedule request (ScheduledDelay notNil)
		- an unschedule request (FinishedDelay notNil)
		- a timer signal (not explicitly specified)
	We check for timer expiry every time we get a signal."
	| nextTick |

	"Process any schedule requests"
	scheduledDelay ifNotNil: [
		"Schedule the given delay."
		scheduledDelay timingPriorityResumptionTime: nowTick + scheduledDelay delayDuration.
		self scheduleDelay: scheduledDelay.
		scheduledDelay := nil ].

	"Process any unschedule requests"
	finishedDelay ifNotNil: [
		self unscheduleDelay: finishedDelay.
		finishedDelay := nil ].

	"Check for clock wrap-around."
	nowTick < activeDelayStartTime ifTrue: [
		"clock wrapped"
		self saveResumptionTimes.
		self restoreResumptionTimes ].
	activeDelayStartTime := nowTick.

	"Signal any expired delays"
	[ activeDelay notNil and:[ nowTick >= activeDelay resumptionTime ]] whileTrue: [
		activeDelay timingPrioritySignalWaitingProcess.
		activeDelay := suspendedDelays removeFirstOrNil.
		].

	"And signal when the next request is due. We sleep at most 1sec here
	as a soft busy-loop so that we don't accidentally miss signals."
	nextTick := nowTick + 1000.
	activeDelay ifNotNil: [
		nextTick := nextTick min: activeDelay resumptionTime ].
	nextTick := nextTick min: SmallInteger maxVal.
	^nextTick.
