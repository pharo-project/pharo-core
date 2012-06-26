instance creation
on: pathString
	"Return a new file directory for the given path, of the appropriate FileDirectory subclass for the current OS platform."

	| pathName |
	DirectoryClass ifNil: [self setDefaultDirectoryClass].
	"If path ends with a delimiter (: or /) then remove it"
	((pathName := pathString) endsWith: self pathNameDelimiter asString) ifTrue: [
		pathName := pathName copyFrom: 1 to: pathName size - 1].
	^ DirectoryClass new setPathName: pathName
