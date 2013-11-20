current
	"Answer the current date and time now, rounded to the nearest whole second, as a TimeStamp."
	
	"This method is not needed as its super class method is sufficient,
	however for MC slice loading it is needed to prevent transient errors"

	^ super now rounded asTimeStamp