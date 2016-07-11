excludedRuleNames

	^ #(RBImplementedNotSentRule),
	(RBParseTreeLintRule allSubclasses, RBTransformationRule allSubclasses collect: #name)