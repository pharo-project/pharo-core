selectedMorph
	^ self selectedMorphList
		ifNotEmpty: [ :l | l last]
 		ifEmpty: []
