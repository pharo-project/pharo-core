enumeration
directoryEntryFor: filenameOrPath
	"Answer the directory entry for the given file or path. Sorta like a poor man's stat()."
	| fName dir |
	DirectoryClass splitName: filenameOrPath to:[:filePath :name |
		fName := name.
		filePath isEmpty
			ifTrue: [dir := self]
			ifFalse: [dir := FileDirectory on: filePath]].
	self isCaseSensitive 
		ifTrue:[^dir entries detect:[:entry| entry name = fName] ifNone:[nil]]
		ifFalse:[^dir entries detect:[:entry| entry name sameAs: fName] ifNone:[nil]]