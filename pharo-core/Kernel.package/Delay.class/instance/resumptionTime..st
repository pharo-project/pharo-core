private
resumptionTime: anInteger
	"Private! Set the value of the system's millisecondClock at which the receiver's suspended Process will resumed.
	Must only be called from the class-side #scheduleDelay:."
	
	resumptionTime := anInteger