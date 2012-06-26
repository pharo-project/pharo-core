accessing
at: index modify: aBlock
	"Replace the element of the collection with itself transformed by the block"
	^ self at: index put: (aBlock value: (self at: index))