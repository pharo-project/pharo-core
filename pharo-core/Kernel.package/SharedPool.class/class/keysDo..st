enumerating
keysDo: aBlock
"A hopefully temporary fix for an issue arising from miss-spelled variable names in code being compiled. The correction code (see Class>possibleVariablesFor:continuedFrom: assumes that sharedPools are Dictionaries. The proper fix would involve making sure all pools are actually subclasses of SharedPool, which they are not currently."
	self bindingsDo:[:b|
		aBlock value: b key]