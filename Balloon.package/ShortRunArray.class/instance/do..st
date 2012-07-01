enumerating
do: aBlock
	"Evaluate aBlock with all elements of the receiver"
	self lengthsAndValuesDo:[:runLength :runValue|
		"Use to:do: instead of timesRepeat: for compiler optimization"
		1 to: runLength do:[:i|
			aBlock value: runValue.
		].
	].