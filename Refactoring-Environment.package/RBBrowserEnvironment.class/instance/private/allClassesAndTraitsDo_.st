allClassesAndTraitsDo: aBlock
	self systemDictionary allClassesAndTraitsDo: [ :each | aBlock value: each; value: each class ]