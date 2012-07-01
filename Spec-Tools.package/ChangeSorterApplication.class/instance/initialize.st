initialization
initialize
	"Initialization code for ChangeSorterApplication"

	prettyPrint := false.
	showDiff := false.
	
	model := ChangeSorterModel new.
	title := self defaultTitle.
	
	super initialize.
	self bindings: MorphicBindingsWithSplitters new.	
	
	