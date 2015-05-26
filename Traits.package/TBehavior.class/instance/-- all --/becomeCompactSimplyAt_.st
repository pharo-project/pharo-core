becomeCompactSimplyAt: index
	"The same as #becomeCompact but without updating my instances."

	| compactClassesArray |

	self isWeak 
		ifTrue: [^ self error: 'You must not make a weak class compact'].
	compactClassesArray := Smalltalk compactClassesArray.
	(self isCompact or: [compactClassesArray includes: self])
		ifTrue: [^ self error: self name, 'is already compact'].		
	(compactClassesArray at: index) ifNotNil: [^ self error: 'compact table slot already in use'].
	"Install this class in the compact class table"
	compactClassesArray at: index put: self.

	"Update instspec so instances will be compact. 
	The layout has the responsibility for setting the format."
	self layout compactClassIndex: index.