addAllMorphs: array

	super addAllMorphs: array.
	array do: [:m | self startSteppingSubmorphsOf: m].
