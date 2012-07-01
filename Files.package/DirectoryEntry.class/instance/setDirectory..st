private-initialization
setDirectory: aFileOrServerDirectory 
	"Set only my (containing) directory.  This is only needed because I couldn't factor ServerDirectory class>>#parseFTPEntry: to the instance-side (because HTTPClient utility uses it).  Therefore, they pass a nil and then set my 'directory' immediately after.."
	directory := aFileOrServerDirectory