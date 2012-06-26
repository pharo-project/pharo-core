Events-Classes
classCreationEvent: event 

	| classCreated |
	self addSingleEvent: event.
	classCreated := Smalltalk globals classNamed: self newlyCreatedClassName.
	self assert: classCreated notNil.
	self 
		assert: ((Smalltalk globals organization 
				listAtCategoryNamed: #'System-Change Notification') 
					includes: self newlyCreatedClassName).
	self 
		checkEvent: event
		kind: #Added
		item: classCreated
		itemKind: AbstractEvent classKind