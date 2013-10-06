referenceFor: aReference
	| ancestors reference |
	ancestors := aReference workingCopy ancestry ancestors.
	ancestors isEmpty ifTrue: [ ^ MCSnapshot new ].
	^ GoferVersionReference name: ancestors first name