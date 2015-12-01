testAcceptKeyCanBeOverriden
	| composite textMorph overriden |
	overriden := false.
	composite := GLMCompositePresentation new with: [ :a | a text act: [ :text | overriden := true ] on: $s entitled: 'Override'].
	window := composite openOn: '4'.
	textMorph := self find: RubScrolledTextMorph in: window.
	self simulateOnlyOneClickOn: textMorph.
	Smalltalk os isMacOSX ifTrue: [self simulateKeyStroke: $s command].
	Smalltalk os isUnix ifTrue: [self simulateKeyStroke: $s alt].
	Smalltalk os isWindows ifTrue: [self simulateKeyStroke: $s alt].
	self assert: overriden