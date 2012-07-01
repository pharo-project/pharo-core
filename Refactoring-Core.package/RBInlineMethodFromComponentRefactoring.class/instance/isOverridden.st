testing
isOverridden
	^(self inlineClass allSubclasses 
		detect: [:each | each directlyDefinesMethod: self inlineSelector]
		ifNone: [nil]) notNil