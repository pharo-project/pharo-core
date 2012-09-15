private
layoutFor: i startingAt: cumulatedHeight finishingAt: newCumulatedHeight

	^ LayoutFrame
		fractions: (0 @ cumulatedHeight corner: 1 @ newCumulatedHeight)
		offsets: (0@(i == 1
						ifTrue: [ 0 ]
						ifFalse: [ 2 ])
				corner:
					0@(i == editors size
								ifTrue: [ 0 ]
								ifFalse: [ -2 ]))