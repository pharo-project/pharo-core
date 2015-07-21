exampleIfTrueNested
	true ifTrue: [ 
		false ifTrue: [ ^ false ].
		^ true ].
	^ nil