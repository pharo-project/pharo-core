checkClass: aContext 
	| allSubclasses |
	allSubclasses := aContext selectedClass withAllSubclasses.
	aContext selectedClass instVarNames do: [ :each | 
		| isRead isWritten |
		isRead := false.
		isWritten := false.
		allSubclasses 
			detect: [ :class | 
				isRead ifFalse: [ isRead := (class whichSelectorsRead: each) isEmpty not ].
				isWritten ifFalse: [ isWritten := (class whichSelectorsAssign: each) isEmpty not ].
				isRead and: [ isWritten ] ]
			ifNone: [
				result 
					addClass: aContext selectedClass
					instanceVariable: each ] ]