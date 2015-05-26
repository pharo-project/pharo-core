normalize
	"normalize the receiver, merging spans which having same attributes"
	self spansDo: [:span | span tryMergeWithNext ]
	