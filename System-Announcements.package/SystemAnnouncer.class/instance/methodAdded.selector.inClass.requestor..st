system triggers
methodAdded: aMethod selector: aSymbol inClass: aClass requestor: requestor
	"A method with the given selector was added to aClass, but not put in a protocol."

	self trigger: (AddedEvent
				method: aMethod 
				selector: aSymbol
				class: aClass
				requestor: requestor)