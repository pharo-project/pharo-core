openWithEnvironment: aEnv removeTestCase: aBoolean
	self new
		items: (RBCompositeLintRule allGoodRules rules
					copyWithFirst: PharoCriticRules pharoIntegrationLintRule);
		environment: aEnv;
		removeTestCase: aBoolean;
		openWithSpec;
		updateTree