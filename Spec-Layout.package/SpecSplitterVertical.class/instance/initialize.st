initialize
initialize
	"Initialization code for SpecSplitterHorizontal"

	super initialize.

	selector := #newVSplitterAt:.
	fractions := 0@0 corner: 0@0.
	offsets := 0@0 corner: 1@0.
	commands := nil.