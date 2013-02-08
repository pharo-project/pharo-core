tests
testCriticsOf

	| smc  rule |
	
	rule  := RBCompositeLintRule allGoodRules.

	smc := SmalllintManifestChecker  new.
	smc runRules:  rule onPackage:  self package. 
	
	self assert: (smc criticsOf: RBOnlyReadOrWrittenTemporaryRule new) size  = 3.

	self assert: (( smc criticsOf: RBOnlyReadOrWrittenTemporaryRule new ) anySatisfy: [:each| each = (MFClassB>>#method3)]).
	self assert: (( smc criticsOf: RBOnlyReadOrWrittenTemporaryRule new) anySatisfy: [:each| each = (MFClassA>>#method)]).