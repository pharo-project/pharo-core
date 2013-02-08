tests
testFalsePositiveOf

	| smc  rule |
	
	rule  := RBCompositeLintRule allGoodRules.

	smc := SmalllintManifestChecker  new runRules:  rule onPackage: self package. 
	

	self assert: (( smc falsePositiveOf: RBCodeCruftLeftInMethodsRule new) anySatisfy: [:each| each = (MFClassB>>#method3)]).
	self deny: (( smc falsePositiveOf: RBCodeCruftLeftInMethodsRule new) anySatisfy: [:each| each = (MFClassA>>#method)]).