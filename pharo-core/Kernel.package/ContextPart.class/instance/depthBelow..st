debugger access
depthBelow: aContext
	"Answer how many calls there are between this and aContext."

	| this depth |
	this := self.
	depth := 0.
	[this == aContext or: [this == nil]]
		whileFalse:
			[this := this sender.
			depth := depth + 1].
	^depth