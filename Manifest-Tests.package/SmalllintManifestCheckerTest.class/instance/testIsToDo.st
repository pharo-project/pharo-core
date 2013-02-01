tests
testIsToDo

	| smc package rule |
	
	rule  := RBCompositeLintRule allGoodRules.
	package := RPackageSet named:  'Manifest-Resources-Tests'.

	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  package. 
	
	
	self assert: (smc isToDo:  (MFClassB>>#method3) forRuleId: (RBOnlyReadOrWrittenTemporaryRule uniqueIdentifierName) versionId:  1).
	self deny: (smc isToDo:  (MFClassB>>#method2) forRuleId: (RBOnlyReadOrWrittenTemporaryRule uniqueIdentifierName) versionId:  1).

