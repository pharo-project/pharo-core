class event handler
aClassHasBeenCommented: anEvent

	anEvent event newStamp notNil
		ifTrue:[self addMethodReference: (self createAClassReference: anEvent)]