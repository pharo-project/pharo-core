instance variables
instVarIndexFor: instVarName ifAbsent: aBlock
	"Answer the index of the named instance variable."

	| index |
	index := instanceVariables == nil 
				ifTrue: [0]
				ifFalse: [instanceVariables indexOf: instVarName ifAbsent: [0]].
	index = 0 ifTrue: 
		[^superclass == nil 
			ifTrue: [aBlock value]
			ifFalse: [superclass instVarIndexFor: instVarName ifAbsent: aBlock]].
	^superclass == nil 	
		ifTrue: [index]
		ifFalse: [index + superclass instSize]