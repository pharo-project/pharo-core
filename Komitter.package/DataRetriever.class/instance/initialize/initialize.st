initialize

	super initialize.

	block := [].
	
	semaphore := Semaphore new.
	semaphoreIsValid := true.
	nullObject := nil.