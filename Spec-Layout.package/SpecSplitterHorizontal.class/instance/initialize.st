initialize
initialize
	"Initialization code for SpecSplitterHorizontal"

	super initialize.

	selector := #newHSplitterAt:.
	layoutFrame  := (0@0 corner: 0@0) asLayoutFrame 
							bottomOffset: 1.
	commands := nil.