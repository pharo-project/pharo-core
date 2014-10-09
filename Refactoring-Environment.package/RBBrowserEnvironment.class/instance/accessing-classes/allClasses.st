allClasses
	"Answer all the unique non-metaclasses of all the classes and metaclasses in this environment."

	| allClasses |
	allClasses := OrderedCollection new: 4096.
	self allClassesDo: [ :each | 
		allClasses add: each ].
	^ allClasses asArray