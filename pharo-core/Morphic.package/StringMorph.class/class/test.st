testing
test
	"Return a morph with lots of strings for testing display speed."
	| c |
	c := AlignmentMorph newColumn.
	self class environment organization categories do:
		[:cat | c addMorph: (StringMorph new contents: cat)].
	^ c