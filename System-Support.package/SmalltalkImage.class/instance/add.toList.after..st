startup list
add: aClass toList: startUpOrShutDownList after: predecessor
	"Add the name of aClass to the startUp or shutDown list.
	Add it after the name of predecessor"

	(Smalltalk globals includes: aClass) 
		ifFalse: [self error: aClass name , ' cannot be found in Smalltalk dictionary.'].

	"Add after predecessor, moving it if already there."
	(Smalltalk globals includes: predecessor)  
		ifFalse: [self error: predecessor name , ' cannot be found in Smalltalk dictionary.'].
	(startUpOrShutDownList includes: predecessor name) 
		ifFalse: [self error: predecessor name , ' cannot be found in the list.'].
	startUpOrShutDownList remove: aClass name ifAbsent:[].
	startUpOrShutDownList add: aClass name after: predecessor name