private
setPathName: pathString
	"Unix path names start with a leading delimiter character."

	(pathString isEmpty or: [pathString first ~= self pathNameDelimiter])
		ifTrue: [pathName := FilePath pathName: (self pathNameDelimiter asString, pathString)]
		ifFalse: [pathName := FilePath pathName: pathString].
