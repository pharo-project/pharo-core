testing
isShadowing
	"Answer true if the receiving shadows another variable in a parent scope."

	self scope isRootScope
		ifTrue: [ ^ false ].
	self scope owner
		lookup: self name
		ifAbsent: [ ^ false ].
	^ true