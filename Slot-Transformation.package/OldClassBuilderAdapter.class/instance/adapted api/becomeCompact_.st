becomeCompact: aClass
	"Make the class compact.
	This means: 
	- to find a free slot in 'Smalltalk compactClassArray'
	- add the class in that array
	- update the format of the class with the index
	- update the instances of the class
	"

	| compactClassesArray index |
	aClass isWeak ifTrue: [^ Halt halt: 'You must not make a weak class compact'].
	compactClassesArray := Smalltalk compactClassesArray.
	(aClass isCompact or: [compactClassesArray includes: aClass])
		ifTrue: [^ self halt: aClass name , 'is already compact'].
	index := compactClassesArray indexOf: nil
		ifAbsent: [^ self halt: 'compact class table is full'].
	"Install this class in the compact class table"
	compactClassesArray at: index put: aClass.

	"Update instspec so instances will be compact. 
	The layout has the responsibility for setting the format."
	aClass layout compactClassIndex: index.

	"Make up new instances and become old ones into them"
	aClass updateInstancesFrom: aClass.
	"Purge any old instances"
	Smalltalk garbageCollect.