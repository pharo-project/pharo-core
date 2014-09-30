testForSmalltalkWorkspace
	| browser textMorph |
	browser := GLMTabulator new.
	browser column: #one.
	browser transmit to: #one; andShow: [ :a | a smalltalkCode variableBindings: [:x | {#theNumber -> x}]].
	window := browser openOn: 42.

	textMorph := self find: GLMPluggableTextMorph in: window.
	self assert: (textMorph model hasBindingOf: #theNumber)