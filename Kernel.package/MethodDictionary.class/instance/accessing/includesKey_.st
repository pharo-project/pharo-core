includesKey: aSymbol
	"This override assumes that pointsTo is a fast primitive"

	aSymbol ifNil: [^ false].
	^ self pointsTo: aSymbol