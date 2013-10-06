allNonMetaClasses
	"Answer all the unique non-metaclasses of all of all the non-metaclasses in this environment."

	| classes |
	classes := IdentitySet new: 4096.
	self classesDo: [ :each | 
		each isMeta
			ifFalse: [ classes add: each ] ].
	^ classes asArray