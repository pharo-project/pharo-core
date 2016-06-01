check: aClass forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	
	| allSubclasses |
	allSubclasses := aClass withAllSubclasses.
	(aClass instVarNames select: [ :each | 
		| isRead isWritten |
		isRead := false.
		isWritten := false.
		allSubclasses 
			noneSatisfy: [ :class | 
				isRead ifFalse: [ isRead := (class whichSelectorsRead: each) isNotEmpty ].
				isWritten ifFalse: [ isWritten := (class whichSelectorsAssign: each) isNotEmpty ].
				isRead and: [ isWritten ] ] ]
		thenCollect: [ :varName | aCriticBlock cull: (
			ReStringBasedCritique for: aClass by: self badString: varName)
			 ]) ifEmpty: alternativeBlock