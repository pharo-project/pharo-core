initialize

	self unSubscribe.
	rules := RBCompositeLintRule allGoodRules
		removeRule: RBImplementedNotSentRule new;
		leaves.
	self subscribe.