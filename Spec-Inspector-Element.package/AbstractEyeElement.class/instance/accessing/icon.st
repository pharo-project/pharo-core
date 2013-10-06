icon
	^ (self value iconOrThumbnailOfSize: 16)
		ifNil: [ self valueClass nautilusIcon ]