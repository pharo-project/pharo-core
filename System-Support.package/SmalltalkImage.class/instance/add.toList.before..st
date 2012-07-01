startup list
add: aClass toList: startUpOrShutDownList before: successor
	"Add the name of aClass to the startUp or shutDown list.
	Add it before the name of successor"

	(Smalltalk globals includes: aClass) 
		ifFalse: [self error: aClass name , ' cannot be found in Smalltalk dictionary.'].
		
	"Add before successor, moving it if already there."
	(Smalltalk globals includes: successor)  
		ifFalse: [self error: successor name , ' cannot be found in Smalltalk dictionary.'].
	(startUpOrShutDownList includes: successor name) 
		ifFalse: [self error: successor name , ' cannot be found in the list.'].
	startUpOrShutDownList remove: aClass name ifAbsent: [].
	startUpOrShutDownList add: aClass name before: successor name.