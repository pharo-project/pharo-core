= anAttributes
	^ (anAttributes class == self class) and: [ attributes = anAttributes attributes ].
