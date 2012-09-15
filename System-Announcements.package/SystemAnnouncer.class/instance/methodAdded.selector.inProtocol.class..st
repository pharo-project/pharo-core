as yet unclassified
methodAdded: aMethod selector: aSymbol inProtocol: aCategoryName class: aClass 
	"A method with the given selector was added to aClass in protocol aCategoryName."

	self announce: (MethodAdded
				method: aMethod
				selector: aSymbol
				protocol: aCategoryName
				class: aClass)