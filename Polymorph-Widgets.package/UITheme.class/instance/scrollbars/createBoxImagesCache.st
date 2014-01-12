createBoxImagesCache
	"creates the cache to store the arrow forms"
	^ OldLRUCache
		size: 20
		factory: [:key | self createBoxOfSize: key first color: key second]