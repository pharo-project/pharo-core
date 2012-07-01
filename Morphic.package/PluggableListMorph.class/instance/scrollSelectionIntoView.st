selection
scrollSelectionIntoView
	"make sure that the current selection is visible"
	| row |
	row := self getCurrentSelectionIndex.
	row = 0 ifTrue: [ ^ self ].
	self scrollToShow: (self listMorph drawBoundsForRow: row)