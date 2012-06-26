enumerating
allSuperclassesDo: aBlock 
	"Evaluate the argument, aBlock, for each of the receiver's superclasses."

	superclass == nil
		ifFalse: [aBlock value: superclass.
				superclass allSuperclassesDo: aBlock]