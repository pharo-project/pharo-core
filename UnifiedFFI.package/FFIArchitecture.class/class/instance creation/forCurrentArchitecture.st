forCurrentArchitecture
	^ (self allSubclasses detect: #isActive) uniqueInstance