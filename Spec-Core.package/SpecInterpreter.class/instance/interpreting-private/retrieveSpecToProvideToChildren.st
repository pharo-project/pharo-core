retrieveSpecToProvideToChildren
	| aSpecForChildren |
	
	"First element is a symbol describing the spec type"
	(spec isKindOf: RawSpec)
		ifTrue: [ aSpecForChildren := superSpec ]
		ifFalse: [ aSpecForChildren := spec ].
	^ aSpecForChildren