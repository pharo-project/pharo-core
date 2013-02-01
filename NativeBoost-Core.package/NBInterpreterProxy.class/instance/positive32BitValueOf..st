proxy functions
positive32BitValueOf: oop
	"Convert the given object into an integer value.
	The object may be either a positive ST integer or a four-byte LargePositiveInteger."
	
	^ self simpleCall
