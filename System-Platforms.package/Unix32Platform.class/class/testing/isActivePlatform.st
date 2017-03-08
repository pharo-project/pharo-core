isActivePlatform
	^ (self currentPlatformName = 'unix') and: [ Smalltalk vm wordSize = 4 ]