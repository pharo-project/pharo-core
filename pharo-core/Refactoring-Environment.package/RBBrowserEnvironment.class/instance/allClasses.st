accessing-classes
allClasses
	"Answer all the unique non-metaclasses of all the classes and metaclasses in this environment."

	| classes |
	classes := IdentitySet new: 4096.
	self classesDo: [ :each | 
		classes add: each theNonMetaClass ].
	^ classes asArray