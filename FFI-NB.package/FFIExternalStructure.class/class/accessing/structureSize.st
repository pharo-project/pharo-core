structureSize
	"Answer structure size respecting alignment (who varies depending on the platform)"
	| structureSize |
	structureSize := self byteSize.
	^ structureSize + (structureSize \\ OSPlatform current ffiAlignment)