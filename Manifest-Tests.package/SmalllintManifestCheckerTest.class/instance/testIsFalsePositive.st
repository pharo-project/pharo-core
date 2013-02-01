tests
testIsFalsePositive 

	| smc package rule |
	
	rule  := RBCompositeLintRule allGoodRules.
	package := PackageInfo allPackages detect: [:p  | p packageName  = 'Manifest-Resources-Tests'].

	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  package. 
	
	
	self assert: (smc isFalsePositive:  (MFClassB>>#method3) forRuleId: (RBCodeCruftLeftInMethodsRule uniqueIdentifierName) versionId:  1).
	self deny: (smc isFalsePositive:  (MFClassA>>#method) forRuleId: (RBCodeCruftLeftInMethodsRule uniqueIdentifierName) versionId:  1).

