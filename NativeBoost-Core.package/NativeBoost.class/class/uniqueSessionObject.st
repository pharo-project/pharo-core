accessing
uniqueSessionObject
	"Answer an unique session object, which changes between
	image restarts.
	A call gate function is a good candidate for this, since its generated each time
	when image first boots. "

	^ self forCurrentPlatform callgateFunctionAddress 