getAttribute: anAttributeClass

	^self style get: anAttributeClass ifAbsent: [ text getAttribute: anAttributeClass ] 