register: aFileHandle
	"properly register the given FileHandle for being closed on garbage collection"
	^self registry add: aFileHandle