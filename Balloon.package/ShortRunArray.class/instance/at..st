accessing
at: index
	"Return the short value at the given index"
	| rlIndex |
	index < 1 ifTrue:[^self errorSubscriptBounds: index].
	rlIndex := index.
	self lengthsAndValuesDo:[:runLength :runValue|
		rlIndex <= runLength ifTrue:[^runValue].
		rlIndex := rlIndex - runLength].
	"Not found. Must be out of range"
	^self errorSubscriptBounds: index