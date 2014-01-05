sendsSelector: aSymbol 	
	"
	Answer whether the method sends a particular selector

	(CompiledMethod >> #sendsSelector:) sendsSelector: #includes:
	=> true

	(CompiledMethod >> #sendsSelector:) sendsSelector: #doBreakfastForMe
	=> false
	"
	^ self messages includes: aSymbol