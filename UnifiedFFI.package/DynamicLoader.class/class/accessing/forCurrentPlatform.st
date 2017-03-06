forCurrentPlatform
	^ (self allSubclasses 
		detect: [ :each | each isAvailable ])
		uniqueInstance
		