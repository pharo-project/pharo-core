Object subclass: #Delay
	instanceVariableNames: 'delayDuration resumptionTime delaySemaphore beingWaitedOn'
	classVariableNames: 'AccessProtect ActiveDelay ActiveDelayStartTime DelaySuspended FinishedDelay RunTimerEventLoop ScheduledDelay SuspendedDelays TimerEventLoop TimingSemaphore'
	poolDictionaries: ''
	category: 'Kernel-Processes'