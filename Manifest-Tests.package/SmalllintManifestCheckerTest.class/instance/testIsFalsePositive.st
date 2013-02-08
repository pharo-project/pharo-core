tests
testIsFalsePositive 

	| smc pacge rule |
	
	rule  := RBCompositeLintRule allGoodRules.

	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  self package. 
	
	self assert: (smc isFalsePositive:  (MFClassB>>#method3) forRuleId: (RBCodeCruftLeftInMethodsRule uniqueIdentifierName) versionId:  1).
	self deny: (smc isFalsePositive:  (MFClassA>>#method) forRuleId: (RBCodeCruftLeftInMethodsRule uniqueIdentifierName) versionId:  1).

