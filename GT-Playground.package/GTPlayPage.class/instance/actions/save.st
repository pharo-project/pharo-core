save
	self content isEmpty
		ifTrue: [ self deleteFromFileSystem ]
		ifFalse: [ self writeToFileSystem ]