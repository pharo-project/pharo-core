public
isWritable: aResolvable
	"Resolve the argument, and answer true if the there is
	a file that can be written to or directory that can be changed."
	
	^ store isWritable: (self resolve: aResolvable)