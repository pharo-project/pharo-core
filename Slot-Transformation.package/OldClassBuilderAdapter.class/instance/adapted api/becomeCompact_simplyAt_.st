becomeCompact: aClass simplyAt: index
	"The same as #becomeCompact: but without updating the instances."

	| compactClassesArray |
	aClass isWeak ifTrue: [^ Halt halt: 'You must not make a weak class compact'].
	compactClassesArray := Smalltalk compactClassesArray.
	(aClass isCompact or: [compactClassesArray includes: aClass])
		ifTrue: [^ self halt: aClass name, 'is already compact'].		
	(compactClassesArray at: index) ifNotNil: [^ self halt: 'compact table slot already in use'].
	"Install this class in the compact class table"
	compactClassesArray at: index put: aClass.

	"Update instspec so instances will be compact. 
	The layout has the responsibility for setting the format."
	aClass layout compactClassIndex: index.