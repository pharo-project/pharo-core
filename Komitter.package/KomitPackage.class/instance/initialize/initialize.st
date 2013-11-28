initialize

	super initialize.

	semaphore := Semaphore new.
	expanded := true.
	semaphoreValid := true.
	isFullyCommited := true.