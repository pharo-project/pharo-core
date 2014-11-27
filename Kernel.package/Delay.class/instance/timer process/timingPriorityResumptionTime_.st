timingPriorityResumptionTime: integerMillisecondClockValue
	"Set the value of the system's millisecondClock after which the receiver's suspended Process will resumed."

	resumptionTime := integerMillisecondClockValue

	"Important! Must only be called from the single timing priority process, e.g...
		DelayScheduler>>handleEventTimer."
		
	
	"TODO: Remove #resumptionTime: -  when all #newCodeEnabled cleaned up (Case 14261)."