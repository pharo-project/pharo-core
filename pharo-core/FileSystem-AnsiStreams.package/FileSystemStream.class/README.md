I am an abstract superclass for read- and write-streams that perform IO via a handle rather than by calling primitives directly. My subclasses' provide a cursor on a collection, so that sequences of IO messages can be position independent.

handle
	A subclass of FileSystemHandle. All IO goes through this object.
	
position
	An integer describing the next index to be accessed.