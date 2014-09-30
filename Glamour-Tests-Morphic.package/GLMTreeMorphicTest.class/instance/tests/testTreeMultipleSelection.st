testTreeMultipleSelection
	| browser treeNodeMorph lastTreeNodeMorph |
	browser := GLMFinder new.
	browser show: [:a | a tree beMultiple].
	window := browser openOn: ($a to: $d).
	treeNodeMorph := self treeRoots first.
	lastTreeNodeMorph := self treeRoots last.
	self send: self tree mouseUpOnItem: treeNodeMorph.
	self send: self tree mouseUpWithShift: true onItem: lastTreeNodeMorph.
	self assert: (browser panes first port: #selection) value notNil.
	self assert: (browser panes first port: #selection) value asSet equals: ($a to: $d) asSet