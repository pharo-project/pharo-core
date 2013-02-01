initialization
setTextModelForMethod: selection
	| interval |

	sourceCodeModel aboutToStyle: true.
	sourceCodeModel text: selection sourceCode.
	sourceCodeModel behavior: selection methodClass.
	
	interval := (self selectionIntervalFor: selection sourceCode).
	interval ifNotNil: [sourceCodeModel setSelection: interval].
	
	
					