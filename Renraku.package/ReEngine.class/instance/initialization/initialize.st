initialize

	rules := RBCompositeLintRule allGoodRules
		removeRule: RBImplementedNotSentRule new;
		removeRule: RBModifiesCollectionRule new;
		leaves.