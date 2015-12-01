testAcceptKeyCanBeOverriden
	| composite textMorph overriden |
	overriden := false.
	composite := GLMCompositePresentation new with: [ :a | a text act: [ :text | overriden := true ] on: $s entitled: 'Override'].
	window := composite openOn: 4.
	textMorph := self find: RubScrolledTextMorph  in: window.
	self simulateOnlyOneClickOn: textMorph.
	self simulateKeyStroke: $s command.
	self simulateKeyStroke: $s control.
	self simulateKeyStroke: $s alt.
	self assert: overriden.