runTimerEventLoop
	| nowTick nextTick   |
	"Run the timer event loop."
	[ runTimerEventLoop ] whileTrue: [ 
		timingSemaphore wait.		
		nowTick := Time millisecondClockValue.
		nextTick := self handleTimerEvent: nowTick.

		"Since we have processed all outstanding requests, reset the timing semaphore so
		that only new work will wake us up again. Do this RIGHT BEFORE setting the next
		wakeup call from the VM because it is only signaled once so we mustn't miss it."
		timingSemaphore consumeAllSignals.
		self primSignal: timingSemaphore atMilliseconds: nextTick.

		"This last test is necessary for the obscure case that the msecs clock rolls over
		after nowTick has been computed (unlikely but not impossible). In this case we'd
		wait for MillisecondClockMask msecs (roughly six days) or until another delay gets
		scheduled (which may not be any time soon). In any case, since handling the
		condition is easy, let's just deal with it"
		Time millisecondClockValue < nowTick
			ifTrue:[ timingSemaphore signal ]. "retry"
		
		].
