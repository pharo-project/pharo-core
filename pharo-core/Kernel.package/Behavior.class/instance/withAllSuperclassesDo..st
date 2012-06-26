enumerating
withAllSuperclassesDo: aBlock 
	"Evaluate the argument, aBlock, for each of the receiver's superclasses."
	aBlock value: self.
	superclass == nil
		ifFalse: [superclass withAllSuperclassesDo: aBlock]