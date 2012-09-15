event-listening
logEvent: anEvent
	"This method is used by the system event system to log all the changes performed in the image"
	(anEvent isRemoved and: [anEvent itemKind = SystemChangeNotifier classKind]) ifTrue: [
		anEvent item acceptsLoggingOfCompilation 
			ifTrue: [self logChange: 'Smalltalk globals removeClassNamed: #' , anEvent item name].
	].
	anEvent isDoIt 
		ifTrue: [self logChange: anEvent item].
	(anEvent isRemoved and: [anEvent itemKind = SystemChangeNotifier methodKind]) ifTrue: [
		anEvent itemClass acceptsLoggingOfCompilation 
			ifTrue: [self logChange: anEvent itemClass name , ' removeSelector: #' , anEvent itemSelector]].