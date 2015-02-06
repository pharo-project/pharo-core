definingClass
	^(Smalltalk globals allClasses flatCollect: [:each | {each . each classSide} ]) 
		detect: [ :class | class definesSlot: self] 
		ifNone: [ nil ]