messageSet: aMessageSet inMorphicWindowLabeled: labelString
	| window listFraction |
	window := (SystemWindow labelled: labelString) model: aMessageSet.
	listFraction := 0.4.
	window addMorph: aMessageSet buildMorphicMessageList frame: (0@0 extent: 1@listFraction).
	aMessageSet 
		addLowerPanesTo: window 
		at: (0@listFraction corner: 1@1) 
		with: nil.

	window setUpdatablePanesFrom: #(messageList).
	^ window