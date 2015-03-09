initialize
	super initialize.
	
	recordedData := WaitfreeQueue new.
	deliveryQueue := WaitfreeQueue new.
	mutex := Mutex new.