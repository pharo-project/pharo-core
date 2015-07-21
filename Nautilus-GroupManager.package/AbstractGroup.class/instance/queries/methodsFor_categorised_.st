methodsFor: aClass categorised: aSymbol
	
	aSymbol ifNil: [ "all" 
		^ self methodsFor: aClass ].

	^ self methods select: [:e | e methodClass = aClass and: [ e category = aSymbol ]].