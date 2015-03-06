becomeCompact
	"Make me compact.
	This means: 
	- find a free slot in 'Smalltalk compactClassArray'
	- add me in that array
	- update my format with the index
	- update my instances
	"
	| compactClassesArray index |
	self isWeak 
		ifTrue: [^ self error: 'You must not make a weak class compact'].
	compactClassesArray := Smalltalk compactClassesArray.
	(self isCompact or: [compactClassesArray includes: self])
		ifTrue: [^ self error: self name , 'is already compact'].
	index := compactClassesArray indexOf: nil
		ifAbsent: [^ self error: 'compact class table is full'].
	"Install this class in the compact class table"
	compactClassesArray at: index put: self.

	"Update instspec so instances will be compact. 
	The layout has the responsibility for setting the format."
	self layout compactClassIndex: index.

	"Make up new instances and become old ones into them"
	self updateInstancesFrom: self.
	"Purge any old instances"
	Smalltalk garbageCollect.