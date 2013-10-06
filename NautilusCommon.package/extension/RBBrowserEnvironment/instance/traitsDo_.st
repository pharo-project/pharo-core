traitsDo: aBlock

	self systemDictionary allTraitsDo: [ :each | aBlock value: each ]