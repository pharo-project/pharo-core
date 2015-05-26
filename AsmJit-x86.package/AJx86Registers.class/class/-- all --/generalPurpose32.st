generalPurpose32
	^ self sortRegistersByIndex: (self generalPurpose select: [:reg| reg is32 ])