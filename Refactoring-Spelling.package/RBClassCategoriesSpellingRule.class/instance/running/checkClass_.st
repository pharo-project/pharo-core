checkClass: aContext 
	| category |
	aContext selectedClass isMeta 
		ifTrue: [ ^ self ].
	category := aContext selectedClass category.
	(self checkSelector: category) do: [ :each | 
		result
			addSearchString: each;
			addCategory: category ]