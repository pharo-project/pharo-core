*FuelTests
duringTestCompileSilently: code classified: aCategory

	^ Author 
		useAuthor: 'TestsAuthor'
		during: [ 
			SystemAnnouncer uniqueInstance 
				suspendAllWhile: [self compile: code classified: aCategory withStamp: nil notifying: nil logSource: true].
			 ]