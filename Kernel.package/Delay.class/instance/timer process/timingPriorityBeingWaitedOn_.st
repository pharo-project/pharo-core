timingPriorityBeingWaitedOn: aBool
	"Indicate whether this delay is currently scheduled, i.e. being waited on"
	
	beingWaitedOn := aBool

	"Important! Must only be called from the single timing priority process, e.g...
		DelayScheduler>>scheduleDelay: 
		DelayScheduler>>unscheduleDelay: "

		
	"TODO: Remove #beingWaitedOn: -  when all #newCodeEnabled cleaned up (Case 14261)."