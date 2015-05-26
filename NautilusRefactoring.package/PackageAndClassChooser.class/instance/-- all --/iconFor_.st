iconFor: anRPackageOrClass
	
	anRPackageOrClass isBehavior
		ifTrue: [ ^ Smalltalk ui icons classIcon ].
	
	RPackageOrganizer default 
		packageNamed: anRPackageOrClass name
		ifAbsent: [ ^ Smalltalk ui icons emptyPackageIcon ].

	^ Smalltalk ui icons packageIcon