fuelAccept: aGeneralMapper

	^ self shouldBeSubstitutedByCleanCopy
		ifTrue: [ aGeneralMapper visitSubstitution: self by: self cleanCopy  ]
		ifFalse: [ aGeneralMapper visitVariableObject: self ]