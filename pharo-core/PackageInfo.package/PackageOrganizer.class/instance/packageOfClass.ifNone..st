searching
packageOfClass: aClass ifNone: errorBlock
	| classCategory |
	classCategory := aClass theNonMetaClass category.
	packages at: classCategory ifPresent: [:v | ^ v].
	
	(classCategory includes: $-)
		ifTrue: [ packages at: (classCategory copyUpTo: $-) ifPresent: [:v | ^ v] ].
	
	^ self packages detect: [:ea | ea includesClass: aClass] ifNone: errorBlock