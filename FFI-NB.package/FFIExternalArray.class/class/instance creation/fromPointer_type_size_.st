fromPointer: aHandle type: aType size: aNumber
	"Creates an array of type aType and size aNumber."
	^ self fromHandle: (aHandle pointerAt: 1) type: aType size: aNumber