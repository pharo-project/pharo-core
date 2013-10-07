allSuperclassesDo: aBlock
	"Evaluate the argument, aBlock, for each of the receiver's superclasses."

	self superclass isNil
		ifFalse: [ 
			aBlock value: superclass.
			superclass allSuperclassesDo: aBlock ]