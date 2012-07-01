submorphs-add/remove
addAllMorphs: array

	super addAllMorphs: array.
	self isWorldMorph
		ifTrue: [array do: [:m | self startSteppingSubmorphsOf: m]].
