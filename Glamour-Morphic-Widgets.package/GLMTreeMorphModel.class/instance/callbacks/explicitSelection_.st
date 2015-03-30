explicitSelection: anObject 
	"anObject is a domain object, not a Glamour related object"
	self glamourPresentation allowExplicitSelectionChange ifFalse: [ ^ self ].
	self glamourPresentation isMultiple 
		ifTrue: [ self explicitlySelectMultipleItems: anObject ]
		ifFalse: [ self explicitlySelectItem: anObject ]