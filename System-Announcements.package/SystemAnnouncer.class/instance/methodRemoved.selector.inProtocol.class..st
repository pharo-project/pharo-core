announcements-convenience
methodRemoved: aMethod selector: aSymbol inProtocol: protocol class: aClass 
	"A method with the given selector was removed from the class."

	self announce: (MethodRemoved
						methodRemoved: aMethod 
						selector: aSymbol
						protocol: protocol
						class: aClass)