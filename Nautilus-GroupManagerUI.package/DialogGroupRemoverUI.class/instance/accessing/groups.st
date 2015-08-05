groups
	^ self groupManager groups select: [ :group | group isFillable and: [ group isReadOnly not ] ]