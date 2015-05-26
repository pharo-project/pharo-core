updateEditorsWith: firstHeight over: totalHeight into: panel
	| cumulatedHeight size |
	
	size := editors size.
	cumulatedHeight := 0.
	editors
		doWithIndex: [ :e :i | 
			| height newCumulatedHeight  |
			height := i == 1
				ifTrue: [ firstHeight ]
				ifFalse: [ 
					e vResizing: #rigid.
					e height ].
			newCumulatedHeight := cumulatedHeight + (height / totalHeight).
			panel addMorph: e fullFrame: (self layoutFor: i startingAt: cumulatedHeight finishingAt: newCumulatedHeight).
			i == size
				ifFalse: [ 
					| below |
					below := editors at: i + 1.
					self
						addSplitterBetween: e
						and: below
						to: panel
						at: newCumulatedHeight ].
			cumulatedHeight := newCumulatedHeight ]