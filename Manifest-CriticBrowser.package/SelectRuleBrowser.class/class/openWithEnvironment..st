instance creation
openWithEnvironment: aEnv
	
	self new items: (RBCompositeLintRule allGoodRules rules);
		environment: aEnv;
		openWithSpec;
		updateTree . 