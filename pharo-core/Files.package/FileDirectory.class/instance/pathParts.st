path access
pathParts
	"Return the path from the root of the file system to this directory as an array of directory names."

	^ pathName asSqueakPathName findTokens: self pathNameDelimiter asString