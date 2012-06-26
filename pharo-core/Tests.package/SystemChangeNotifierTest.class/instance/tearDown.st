Running
tearDown

	super tearDown.
	self capturedEvent: nil.
	notifier releaseAll.
	notifier := nil