public
isReadable: aResolvable
	"Resolve the argument, and answer true if the there is
	a file or directory that can be read from."
	
	^ store isReadable: (self resolve: aResolvable)