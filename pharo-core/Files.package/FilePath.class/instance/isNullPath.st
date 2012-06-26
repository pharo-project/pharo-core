testing
isNullPath
	"an empty path is used to represent the root path(s) when calling the primitive to list directory entries. Some users need to check for this and this is cleaner than grabbing the pathname and assuming it is a plain String"
	^self pathName isEmpty