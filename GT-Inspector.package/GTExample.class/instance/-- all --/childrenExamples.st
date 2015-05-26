childrenExamples
	
	^ self extractionStrategy 
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ self extractionStrategy childrenExamplesFor: self ]