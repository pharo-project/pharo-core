initialize-release
needsFrameSize: newFrameSize
	"Set the largeFrameBit to accomodate the newFrameSize"
	| largeFrameBit header |
	largeFrameBit := 16r20000.
	(self numTemps + newFrameSize) > LargeFrame ifTrue:
		[^ self error: 'Cannot compile -- stack including temps is too deep'].
	header := self objectAt: 1.
	(header bitAnd: largeFrameBit) ~= 0
		ifTrue: [header := header - largeFrameBit].
	self objectAt: 1 put: header
			+ ( ((self numTemps + newFrameSize) > SmallFrame or: [ self primitive = 84 "perform:withArguments:"])
					ifTrue: [largeFrameBit]
					ifFalse: [0])