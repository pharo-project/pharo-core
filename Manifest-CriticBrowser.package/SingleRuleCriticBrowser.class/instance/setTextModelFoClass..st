initialization
setTextModelFoClass: cl
	| interval |

	sourceCodeModel aboutToStyle: true.
	sourceCodeModel text: cl definition.
	sourceCodeModel behavior: nil .
	
	interval := (self selectionIntervalFor: cl definition).
	interval ifNotNil: [sourceCodeModel setSelection: interval].
	
	
					