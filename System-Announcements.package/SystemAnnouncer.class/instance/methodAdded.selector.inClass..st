system triggers
methodAdded: aMethod selector: aSymbol inClass: aClass 
	"A method with the given selector was added to aClass, but not put in a protocol."

	self announce: (AddedEvent
				method: aMethod 
				selector: aSymbol
				class: aClass)