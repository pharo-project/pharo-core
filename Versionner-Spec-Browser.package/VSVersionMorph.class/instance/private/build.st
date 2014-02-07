build	
	version isStable 
		ifTrue: [ self addTag: #stable ].
	version isDevelopment 
		ifTrue: [ self addTag: #development ].	
	self 
		addAllMorphs: tags;
		addMorphFront: version name asMorph;
		yourself.