resolvePath: anAbsoluteOrRelativePath
	"convert the incoming path to the absolute path.
	anAbsoluteOrRelativePath is always relative to my reference. 
	If the incoming path is '/' (root) the resulting path is going to be the one from my reference "
	^ self reference fullPath 
		resolve: anAbsoluteOrRelativePath asRelativePath