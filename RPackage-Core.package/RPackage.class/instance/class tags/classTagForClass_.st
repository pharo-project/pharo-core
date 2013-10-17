classTagForClass: aClass 
	^ self 
		classTagNamed: aClass category 
		ifAbsent: [ nil ]