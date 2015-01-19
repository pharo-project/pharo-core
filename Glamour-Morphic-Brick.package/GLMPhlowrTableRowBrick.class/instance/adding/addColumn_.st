addColumn: aColumn
	|brick|
	brick := (aColumn computation cull: self entity) asBrick.
	aColumn style ifNotNil: [ brick := aColumn style cull: brick ].
	^ self addBrickBack: brick