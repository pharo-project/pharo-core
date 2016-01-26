computeSelectionIntervalForCurrentLine
	| i s interval  |
	s := self string.
	i := s encompassParagraph: self selectionInterval.
	interval := self computeSelectionIntervalFromCodeIn: s at: i.
	interval ifNotEmpty: [ ^ i first - 1 + interval ].
	interval := self computeSelectionIntervalFromCommentIn: s at: i.
	interval ifNotEmpty: [ ^ i first - 1 + interval ].
	^ 0 to: -1