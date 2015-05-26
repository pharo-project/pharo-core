markFullyClean: aBrick 

	aBrick withAllSubbricks do: [ :each | each wrappedBounds markWidthClean; markHeightClean ].
	^ aBrick