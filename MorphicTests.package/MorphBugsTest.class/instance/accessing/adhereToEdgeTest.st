adhereToEdgeTest
	"self new adhereToEdgeTest"

	"self run: #adhereToEdgeTest"

	| r |
	r := Morph new openInWorld.
	[ r adhereToEdge: #eternity ]
		ensure: [ r delete ].
	r delete.
	^ true