testPastingUpdatesTextPort
	| composite textMorph |
	composite := GLMCompositePresentation new with: [ :a | a text display: '' ].
	window := composite openOn: 42.
	textMorph := self find: PluggableTextMorph in: window.
	Clipboard clipboardText: '42'.
	textMorph paste.
	self assert: (composite pane port: #text) value = '42'