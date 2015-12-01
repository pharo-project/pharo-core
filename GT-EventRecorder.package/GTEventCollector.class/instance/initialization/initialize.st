initialize
	super initialize.	
	recordedEvents := WaitfreeQueue new.
	creationTime := DateAndTime now.