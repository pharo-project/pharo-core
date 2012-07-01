registration
classSelected: anAnnouncement

	| container |
	container := self model ui ifNotNil: [:view | view sourceCodeContainer ] ifNil: [ ^ self] .
	anAnnouncement itemClass
		ifNil: [
			subMorphs ifNil: [ subMorphs := container submorphs ].
			container removeAllMorphs.
			container addMorph: (self remplacementMorphUsing: anAnnouncement)]
		ifNotNil: [
			subMorphs ifNotNil: [
			container removeAllMorphs.
			subMorphs reverse do: [:each | container addMorph: each ]]]