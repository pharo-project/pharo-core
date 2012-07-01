Events-Classes
classRemovalEvent: event 
	"This event used to be sent efter the class was removed.
	This was changed, and therefore this test is useless currently."

	self addSingleEvent: event.
	self assert: (Smalltalk globals classNamed: self generatedTestClassName) isNil.
	self 
		checkEvent: event
		kind: #Removed
		item: self generatedTestClassName
		itemKind: AbstractEvent classKind