openWithEnvironment: aEnv removeTestCase: aBoolean
	self new
		items:
			(RBCompositeLintRule allGoodRules rules
				copyWithFirst: self pharoIntegrationRules);
		environment: aEnv;
		removeTestCase: aBoolean;
		openWithSpec;
		updateTree