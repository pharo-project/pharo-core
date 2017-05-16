allAvailableFor: aRepository
	^ self allSubclasses select: [ :each | each isAvailableFor: aRepository ]
