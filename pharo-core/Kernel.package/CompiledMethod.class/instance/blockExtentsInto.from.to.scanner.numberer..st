debugger support
blockExtentsInto: aDictionary from: initialPC to: endPC scanner: scanner numberer: numbererBlock
	"Support routine for startpcsToBlockExtents"
	| extentStart blockSizeOrLocator |
	self flag: 'belongs in DebuggerMethodMap'.
	extentStart := numbererBlock value.
	[scanner pc <= endPC] whileTrue:
		[blockSizeOrLocator := scanner interpretNextInstructionFor: BlockStartLocator new.
		 blockSizeOrLocator isInteger ifTrue:
			[self
				blockExtentsInto: aDictionary
				from: scanner pc
				to: scanner pc + blockSizeOrLocator - 1
				scanner: scanner
				numberer: numbererBlock]].
	aDictionary at: initialPC put: (extentStart to: numbererBlock value).
	^aDictionary