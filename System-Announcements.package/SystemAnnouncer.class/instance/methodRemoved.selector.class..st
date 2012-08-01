system triggers
methodRemoved: aMethod selector: aSymbol class: aClass 
	"A method with the given selector was removed from the class."

	self announce: (RemovedEvent
				method: aMethod 
				selector: aSymbol
				class: aClass)