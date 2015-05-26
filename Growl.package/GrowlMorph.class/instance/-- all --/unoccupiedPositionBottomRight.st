unoccupiedPositionBottomRight

	| delta b morphs |
	delta := 0.
	TaskbarMorph showTaskbar
		ifTrue: [ delta := TaskbarMorph allInstances inject: 0 into: [:s :e | s + e height ]].
	b := (World bottomRight - (self width@ (self height +delta))) extent: self extent.
	morphs := self class allSubInstances select: [:m | m world == World].
	[self is: b saneWithRespectTo: morphs] whileFalse: [
		b := b translateBy: 0@(-10).
		b top < 0 ifTrue: [^ World bottomRight - (self width@ (self height +delta))]].
	^ b origin