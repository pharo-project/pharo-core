computeSelectionIntervalForCurrentLine
	| i left right s |
	s := self string.
	i := s encompassParagraph: self selectionInterval.
	left := i first.
	right := i last.
	[ left <= right and: [ (s at: left) = $" or: [(s at: left) isSeparator] ] ]
		whileTrue: [ left := left + 1 ].
	[ left <= right and: [ (s at: right) = $"  or: [(s at: right) isSeparator] ] ]
		whileTrue: [ right := right - 1 ].
	^ left to: right