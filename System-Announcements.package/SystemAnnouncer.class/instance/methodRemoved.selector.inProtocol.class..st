system triggers
methodRemoved: aMethod selector: aSymbol inProtocol: protocol class: aClass 
	"A method with the given selector was removed from the class."

	self announce: (RemovedEvent
				method: aMethod 
				selector: aSymbol
				protocol: protocol
				class: aClass)