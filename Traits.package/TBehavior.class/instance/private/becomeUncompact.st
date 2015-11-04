becomeUncompact
	"The inverse of #becomeCompact. However, some classes can not be uncompact see #checkCanBeUncompact."

	| compactClassesArray index |
	compactClassesArray := Smalltalk compactClassesArray.
	(index := self indexIfCompact) = 0
		ifTrue: [^ self].
	self assert:[compactClassesArray includes: self].
	self checkCanBeUncompact.

	"Update instspec so instances will be compact. 
	The layout has the responsibility for setting the format."
	self classLayout compactClassIndex: 0.
	
	"Make up new instances and become old ones into them"
	self updateInstancesFrom: self.
	"Make sure there are no compact ones left around"
	Smalltalk garbageCollect.
	"Remove this class from the compact class table"
	compactClassesArray at: index put: nil.
