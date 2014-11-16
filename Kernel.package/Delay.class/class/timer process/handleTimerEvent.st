handleTimerEvent
	"Handle a timer event; which can be either:
		- a schedule request (ScheduledDelay notNil)
		- an unschedule request (FinishedDelay notNil)
		- a timer signal (not explicitly specified)
	We check for timer expiry every time we get a signal."
	| nowTick nextTick |
self newCodeEnabled 
  ifTrue: [
	self shouldNotImplement.
	]
  ifFalse: [
	"Wait until there is work to do."
	TimingSemaphore wait.

	"Process any schedule requests"
	ScheduledDelay ifNotNil: [
		"Schedule the given delay"
		self scheduleDelay: ScheduledDelay.
		ScheduledDelay := nil ].

	"Process any unschedule requests"
	FinishedDelay ifNotNil: [
		self unscheduleDelay: FinishedDelay.
		FinishedDelay := nil ].

	"Check for clock wrap-around."
	nowTick := Time millisecondClockValue.
	nowTick < ActiveDelayStartTime ifTrue: [
		"clock wrapped"
		self saveResumptionTimes.
		self restoreResumptionTimes ].
	ActiveDelayStartTime := nowTick.

	"Signal any expired delays"
	[ ActiveDelay notNil and:[ nowTick >= ActiveDelay resumptionTime ]] whileTrue: [
		ActiveDelay signalWaitingProcess.
		SuspendedDelays isEmpty 
			ifTrue: [ ActiveDelay := nil ] 
			ifFalse:[ ActiveDelay := SuspendedDelays removeFirst ]].

	"And signal when the next request is due. We sleep at most 1sec here
	as a soft busy-loop so that we don't accidentally miss signals."
	nextTick := nowTick + 1000.
	ActiveDelay ifNotNil: [
		nextTick := nextTick min: ActiveDelay resumptionTime ].
	nextTick := nextTick min: SmallInteger maxVal.

	"Since we have processed all outstanding requests, reset the timing semaphore so
	that only new work will wake us up again. Do this RIGHT BEFORE setting the next
	wakeup call from the VM because it is only signaled once so we mustn't miss it."
	TimingSemaphore consumeAllSignals.
	Delay primSignal: TimingSemaphore atMilliseconds: nextTick.

	"This last test is necessary for the obscure case that the msecs clock rolls over
	after nowTick has been computed (unlikely but not impossible). In this case we'd
	wait for MillisecondClockMask msecs (roughly six days) or until another delay gets
	scheduled (which may not be any time soon). In any case, since handling the
	condition is easy, let's just deal with it"
	Time millisecondClockValue < nowTick
		ifTrue:[ TimingSemaphore signal ]. "retry"
	]