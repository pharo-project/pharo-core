initialization
initialize
	"Initialization code for DualChangeSorterApplication"

	super initialize.

	model := ChangeSorterModel new.
	isRefreshing := false.
	
	self bindings: MorphicBindingsWithSplitters new.