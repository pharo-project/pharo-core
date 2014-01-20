groupsButtonLabel

	^ 
		((self showGroups) and:[self groupsAreVisible])
			ifTrue: [ self packageLabel ]
			ifFalse: [ self groupsLabel ]