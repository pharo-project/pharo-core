icon
	^ (self value iconOrThumbnailOfSize: 16)
		ifNil: [ self value class nautilusIcon ]