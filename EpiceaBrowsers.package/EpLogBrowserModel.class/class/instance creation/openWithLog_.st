openWithLog: aLog

	^ (self newWithLog: aLog)
		refresh;
		openWithSpec;
		yourself