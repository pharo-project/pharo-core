setUp
	super setUp.
	semaphore := Semaphore new.
	delivery := GTEventDelivery new