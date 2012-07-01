accessing class hierarchy
withAllSubclassesDo: aBlock
	| temp |
	temp := self allSubclassesDo: aBlock.
	aBlock value: self