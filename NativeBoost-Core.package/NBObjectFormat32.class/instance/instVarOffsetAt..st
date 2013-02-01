as yet unclassified
instVarOffsetAt: index
	"answer an offset of instance variable with given 1-based index,
	relative to some oop"
	^ self baseHeaderSize + (self oopSize*(index-1)).