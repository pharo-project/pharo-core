testing
directoryExists: filenameOrPath
	"Answer true if a directory of the given name exists. The given name may be either a full path name or a local directory within this directory."
	"FileDirectory default directoryExists: FileDirectory default pathName"

	| fName dir |
	DirectoryClass splitName: filenameOrPath to:
		[:filePath :name |
			fName := name.
			filePath isEmpty
				ifTrue: [dir := self]
				ifFalse: [dir := self directoryNamed: filePath]].

	^dir exists and: [
		self isCaseSensitive 
			ifTrue:[dir directoryNames includes: fName]
			ifFalse:[dir directoryNames anySatisfy: [:name| name sameAs: fName]]].
