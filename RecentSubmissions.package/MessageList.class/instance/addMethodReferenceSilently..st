actions
addMethodReferenceSilently: aMethodReference

	self useAsASet
		ifTrue: [ self methodReferenceList removeAllSuchThat: [:each | each fullName = aMethodReference fullName]].
	self checkCurrentHighestUpdate: aMethodReference.
	self methodReferenceList add: aMethodReference.
	lastEntry := aMethodReference.