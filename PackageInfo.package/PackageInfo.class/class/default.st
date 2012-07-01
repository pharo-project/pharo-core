compatibility
default
	^ self allPackages detect: [:ea | ea class = self] ifNone: [self new register]