methodAdded: aMethod selector: aSymbol inClass: aClass requestor: requestor
	"A method with the given selector was added to aClass, but not put in a protocol."

	self announce: (MethodAdded
				method: aMethod 
				selector: aSymbol
				protocol: nil
				class: aClass
				requestor: requestor)