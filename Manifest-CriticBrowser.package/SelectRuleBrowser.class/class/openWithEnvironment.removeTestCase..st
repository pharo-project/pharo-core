instance creation
openWithEnvironment: aEnv removeTestCase: aBooelan
	
	self new items: (RBCompositeLintRule allGoodRules rules);
		environment: aEnv;
		removeTestCase: aBooelan;
		openWithSpec;
		updateTree . 