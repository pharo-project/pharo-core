initialize-release
initializeWith: aMapper root: anObject

	self initialize.
	firstMapper := aMapper.
	aMapper analysis: self.
	root := anObject.
	objectStack := FLSimpleStack new.
	clusterization := FLClusterization new.
