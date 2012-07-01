as yet unclassified
codeChangedEvent: anEvent

	(anEvent isDoIt not
		and: [anEvent itemClass notNil	
			and: [self createdClassesAndTraits includes: anEvent itemClass instanceSide]]) ifTrue: [self setDirty] 