externalNew: numberOfElements
	"answer a fresh instance of receiver, allocated on external memory "
	
	^ self onAddress: (NativeBoost allocate: elementSize * numberOfElements) size: numberOfElements