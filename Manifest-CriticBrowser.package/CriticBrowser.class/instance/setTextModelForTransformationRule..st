initialization
setTextModelForTransformationRule: selection
	
	| textDiff change |
	rule result.
	change := rule changes detect: [:ch |
		((ch changeClassName) = (selection methodClass name)) & (ch selector = selection selector)].
	textDiff := (TextDiffBuilder
		from: (selection sourceCode)
		to:  (change source) inClass: selection methodClass) buildDisplayPatch.
	
	sourceCodeModel behavior: nil.
	sourceCodeModel text: textDiff.
	sourceCodeModel aboutToStyle: false.

									
					