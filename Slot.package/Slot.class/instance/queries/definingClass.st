definingClass
	^Smalltalk globals allClasses detect: [ :class | class definesSlot: self ] ifNone: [ nil ]