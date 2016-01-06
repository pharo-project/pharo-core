structureSize
	"Answer structure size respecting alignment (who varies depending on the platform)"
	^ self byteSize alignedTo: OSPlatform current ffiAlignment