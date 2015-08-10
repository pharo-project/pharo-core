initialize

	self unSubscribe.
	rules := RBCompositeLintRule allGoodRules
		removeRule: RBImplementedNotSentRule new;
		removeRule: RBModifiesCollectionRule new;
		leaves.
	self subscribe.