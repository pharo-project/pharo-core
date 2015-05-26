allMetaClasses
	"Answer all the unique non-metaclasses of all metaclasses in this environment."

	| allMetaClasses |
	allMetaClasses := OrderedCollection new: 4096.
	self allClassesDo: [ :each | 
		allMetaClasses add: each theMetaClass ].
	^ allMetaClasses asArray