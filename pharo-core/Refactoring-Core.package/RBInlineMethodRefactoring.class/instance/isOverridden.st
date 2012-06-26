testing
isOverridden
	^(class allSubclasses detect: [:each | each directlyDefinesMethod: self inlineSelector]
		ifNone: [nil]) notNil