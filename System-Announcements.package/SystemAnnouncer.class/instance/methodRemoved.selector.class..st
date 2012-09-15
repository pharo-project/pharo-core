as yet unclassified
methodRemoved: aMethod selector: aSymbol class: aClass 
	"A method with the given selector was removed from the class."

	self announce: (MethodRemoved
						methodRemoved: aMethod 
						selector: aSymbol
						protocol: nil
						class: aClass)