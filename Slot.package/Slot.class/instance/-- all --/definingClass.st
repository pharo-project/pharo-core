definingClass
	^(Smalltalk globals allClasses flatCollect: [:each | {each . each classSide} ]) 
		detect: [ :class | class layout definesSlot: self] 
		ifNone: [ nil ]