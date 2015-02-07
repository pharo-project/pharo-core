ensureInitalizeMethodExists: aClass
	(aClass includesSelector:  #initialize) ifTrue: [ ^self ].
	aClass compile: 'initialize' classified: 'initialization'.