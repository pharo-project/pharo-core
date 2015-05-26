testCodeExecutionWithBindings
	| composite textMorph result |
	composite := GLMCompositePresentation new.
	composite pharoPlayground.
	window := composite openOn: 'a:=1'.

	result := nil.
	textMorph := self find: RubScrolledTextMorph in: window.
	textMorph textArea editor evaluateSelectionAndDo: [ :r | result := r ].
	self assert: result equals: 1