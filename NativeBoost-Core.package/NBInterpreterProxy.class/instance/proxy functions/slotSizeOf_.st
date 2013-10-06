slotSizeOf: oop
	"Returns the number of slots in the receiver.
	If the receiver is a byte object, return the number of bytes.
	Otherwise return the number of words."

	^ self simpleCall
