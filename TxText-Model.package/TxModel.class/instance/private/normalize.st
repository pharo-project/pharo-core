normalize
	"Merge spans which have same attributes"
	self spansDo: [:span | span tryMergeWithNext ]
	