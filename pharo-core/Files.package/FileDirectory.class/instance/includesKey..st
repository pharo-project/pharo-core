testing
includesKey: localName
	"Answer true if this directory includes a file or directory of the given name. Note that the name should be a local file name, in contrast with fileExists:, which takes either local or full-qualified file names."
	"(FileDirectory on: Smalltalk vmPath) includesKey: 'SqueakV2.sources'"
	self isCaseSensitive
		ifTrue:[^ self fileAndDirectoryNames includes: localName]
		ifFalse:[^ self fileAndDirectoryNames anySatisfy: [:str| str sameAs: localName]].