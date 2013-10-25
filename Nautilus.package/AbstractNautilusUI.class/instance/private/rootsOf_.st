rootsOf: aPackage
	| tmpList |
	tmpList := aPackage definedClasses.
	self browsedEnvironment isSystem
		ifFalse: [ tmpList := self model classes intersection: tmpList ].
	^ tmpList reject: [ :each | tmpList includes: each superclass ]