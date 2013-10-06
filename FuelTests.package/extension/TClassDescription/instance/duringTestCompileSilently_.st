duringTestCompileSilently: code
	^ Author 
		useAuthor: 'TestsAuthor'
		during: [ 
			 [self compile: code classified: '' withStamp: nil notifying: nil logSource: true] 				fuelValueWithoutNotifications
			 ]