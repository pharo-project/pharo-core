checkSlotsIndices: cls
	cls layout allSlots withIndexDo: [ :slot :index|
		self assert: slot name isNil not.
		self flag: 'fix slot indexing..'
		"self assert: slot index = ((cls layout fixedSizeUpToIndex: index) + 1).
		slot index: ((cls layout fixedSizeUpToIndex: index) + 1)"]