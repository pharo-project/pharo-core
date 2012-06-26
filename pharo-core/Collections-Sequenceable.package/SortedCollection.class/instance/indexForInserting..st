private
indexForInserting: newObject

	| index low high |
	low := firstIndex.
	high := lastIndex.
	sortBlock isNil
		ifTrue: [[index := high + low // 2.  low > high]
			whileFalse: 
				[((array at: index) <= newObject)
					ifTrue: [low := index + 1]
					ifFalse: [high := index - 1]]]
		ifFalse: [[index := high + low // 2.  low > high]
			whileFalse: 
				[(sortBlock value: (array at: index) value: newObject)
					ifTrue: [low := index + 1]
					ifFalse: [high := index - 1]]].
	^low