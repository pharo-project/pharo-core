adjustResumptionTimeOldBase: oldBaseTime newBase: newBaseTime
	"Private! Adjust the value of the system's millisecond clock at which this Delay will be awoken. Used to adjust resumption times after a snapshot or clock roll-over."

	resumptionTime := newBaseTime + (resumptionTime - oldBaseTime).

	"TODO: Remove me when all #newCodeEnabled cleaned up (Case 14261).
	 Moved to DelayScheduler following #saveResumptionTimes and #restoreResumptionTimes as only users"