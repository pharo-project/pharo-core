buttons behavior
groupsButtonLabel

	^ 
		self showGroups
			ifTrue: [ self packageLabel ]
			ifFalse: [ self groupsLabel ]