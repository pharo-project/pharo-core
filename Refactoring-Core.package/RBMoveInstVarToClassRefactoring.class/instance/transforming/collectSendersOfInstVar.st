collectSendersOfInstVar
	| brokenSenders subclasses hasInstVar |
	hasInstVar := false.
	brokenSenders := OrderedCollection new.
	oldClass superclass instVarNames
		do: [ :each | 
			each = variableName
				ifTrue: [ hasInstVar := true ] ].
	hasInstVar
		ifTrue: [ ^ brokenSenders ]
		ifFalse: [ 
			brokenSenders := (oldClass selectors
				select: [ :each | (oldClass methodNamed: each) sourceCode includesSubstring: variableName asString ]
				thenCollect: [ :each | oldClass methodNamed: each ]) asOrderedCollection.
			subclasses := oldClass subclasses.
			subclasses
				do: [ :subclass | 
					subclass selectors
						do: [ :each | 
							((subclass methodNamed: each) sourceCode includesSubstring: ' ' , variableName asString , ' ')
								ifTrue: [ brokenSenders add: (subclass methodNamed: each) ] ] ].
			^ brokenSenders ]