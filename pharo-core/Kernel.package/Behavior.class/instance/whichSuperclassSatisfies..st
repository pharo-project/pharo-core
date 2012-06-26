queries
whichSuperclassSatisfies: aBlock 
	(aBlock value: self) ifTrue: [^self].
	^superclass isNil 
		ifTrue: [nil]
		ifFalse: [superclass whichSuperclassSatisfies: aBlock]