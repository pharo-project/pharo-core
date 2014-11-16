Object subclass: #Delay
	instanceVariableNames: 'delayDuration resumptionTime delaySemaphore beingWaitedOn'
	classVariableNames: 'AccessProtect ActiveDelay ActiveDelayStartTime DelaySuspended EnableNewCode FinishedDelay RunTimerEventLoop ScheduledDelay Scheduler SuspendedDelays TimerEventLoop TimingSemaphore'
	poolDictionaries: ''
	category: 'Kernel-Processes'