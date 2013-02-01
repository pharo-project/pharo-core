accessing
generalPurpose16
	^ self sortRegistersByIndex: (self generalPurpose select: [:reg| reg is16 ])