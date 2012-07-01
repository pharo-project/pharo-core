as yet unclassified
testSingleShortcutsMatch
	|a one home |
	a := self eventKey: $a.
	one := self eventKey: 1 asCharacter.
	home := self eventKey: Character home.
	
	self assert: ($a asShortcut matches: {a}).
	self assert: (1 asShortcut matches: {one}).
	self assert: (Character home asShortcut matches: {home}).
	
	self deny: ($b asShortcut matches: {a}).
	
	self assert: ($a asShortcut matchesCompletely: {a}).
	self assert: (1 asShortcut matchesCompletely: {one}).