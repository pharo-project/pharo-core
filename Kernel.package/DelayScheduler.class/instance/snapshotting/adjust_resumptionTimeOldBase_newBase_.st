adjust: aDelay resumptionTimeOldBase: oldBaseTime newBase: newBaseTime
	"Used to adjust resumption times after a snapshot or clock roll-over."

	aDelay timingPriorityResumptionTime: newBaseTime + ( aDelay resumptionTime - oldBaseTime).

	"Important! Must only be called from the single timing priority process, e.g...
		DelayScheduler>>saveResumptionTimes 
		DelayScheduler>>restoreResumptionTimes "


	"BTC-2014-10-27, this seems not performance critical occuring only one tick every six days (or longer with Spur?)
	 or when snapshotting. Better to have locaility with the code that uses it? "

	"TODO: Remove Delay>>adjustResumptionTimeOldBase:newBase: 
	when all #newCodeEnabled cleaned up (Case 14261)."
	
	