testChangeLabel
	| manager tabModel window |
	manager := TabManagerModel new.
	tabModel := self redMorphTab.
	manager addTab: tabModel.

	self assert: tabModel label = 'Red Morph'.
	tabModel label: 'Change Before Opening'.
	self assert: tabModel label = 'Change Before Opening'.

	window := manager openWithSpec.
	tabModel label: 'Change After Opening'.
	self assert: tabModel label = 'Change After Opening'.
	window delete