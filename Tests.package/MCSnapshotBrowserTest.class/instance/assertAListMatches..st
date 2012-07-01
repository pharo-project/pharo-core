asserting
assertAListMatches: strings
	| listMorphs |
	listMorphs := self listMorphs.
	listMorphs 
		detect: [:m | | list | list := m getList. (list size = strings size) and: [list includesAllOf: strings]]
		ifNone: [self assert: false].