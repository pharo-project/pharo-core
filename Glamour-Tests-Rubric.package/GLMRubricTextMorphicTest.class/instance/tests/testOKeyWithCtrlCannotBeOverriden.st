testOKeyWithCtrlCannotBeOverriden
	| composite textMorph overriden |
	overriden := false.
	composite := GLMCompositePresentation new with: [ :a | a text act: [ :text | overriden := true ] on: $o entitled: 'Override'].
	window := composite openOn: '4'.
	textMorph := self find: RubScrolledTextMorph in: window.
	self simulateOnlyOneClickOn: textMorph.
	Smalltalk os isMacOSX ifTrue: [self simulateKeyStroke: $o command].
	Smalltalk os isUnix ifTrue: [self simulateKeyStroke: $o ctrl].
	Smalltalk os isWindows ifTrue: [self simulateKeyStroke: $o ctrl].
	self assert: overriden not