resumptionTime
	"Answer the value of the system's millisecondClock at which the receiver's suspended Process will resume."

	^ resumptionTime ifNil: [ schedulerResumptionTime ifNil: [ 0 ] ]

	"TODO Issue 15110: Remove this method as part of cleanup"