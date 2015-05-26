isPointers: value
	"Answer true if the argument has only fields that can hold oops. See comment in formatOf:"
	^ self simpleCall
