initialize
initialize
	"Initialization code for SpecSplitterHorizontal"

	super initialize.

	selector := #newHSplitterAt:.
	fractions := 0@0 corner: 0@0.
	offsets := 0@0 corner: 0@1.
	commands := nil.