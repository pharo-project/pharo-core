as yet unclassified
rootItems
	^ rootClass allSubclasses asArray sort: [:a :b | a name < b name]