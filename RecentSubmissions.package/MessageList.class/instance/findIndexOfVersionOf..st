private
findIndexOfVersionOf: aMethodReference

	| list timeStamp|
	timeStamp := aMethodReference timeStamp.
	list := self versionsHistoryList.
	list size = 1
		ifTrue: [^1].
	1 to: list size - 1 do: [:i || current next |
		current := list at: i.
		next := list at: (i+1).
		((current value <= timeStamp asDateAndTime) & (next value asDateAndTime> timeStamp asDateAndTime))
			ifTrue: [^i]].
	^list size.