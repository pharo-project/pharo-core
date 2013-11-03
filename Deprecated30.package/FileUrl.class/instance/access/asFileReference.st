asFileReference
	"convert this FileUrl to a FileReference"
	^ FileSystem disk root resolve: self pathString 