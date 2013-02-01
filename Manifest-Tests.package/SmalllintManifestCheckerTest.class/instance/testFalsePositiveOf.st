tests
testFalsePositiveOf

	| smc package rule |
	
	rule  := RBCompositeLintRule allGoodRules.
	package := RPackageSet named:  'Manifest-Resources-Tests'.

	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  package. 
	

	self assert: (( smc falsePositiveOf: RBCodeCruftLeftInMethodsRule new) anySatisfy: [:each| each = (MFClassB>>#method3)]).
	self deny: (( smc falsePositiveOf: RBCodeCruftLeftInMethodsRule new) anySatisfy: [:each| each = (MFClassA>>#method)]).