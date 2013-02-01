tests
testCriticsOf

	| smc package rule |
	
	rule  := RBCompositeLintRule allGoodRules.
	package := RPackageSet named:  'Manifest-Resources-Tests'.
	
	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  package. 
	
	self assert: (smc criticsOf: RBOnlyReadOrWrittenTemporaryRule new) size  = 3.

	self assert: (( smc criticsOf: RBOnlyReadOrWrittenTemporaryRule new ) anySatisfy: [:each| each = (MFClassB>>#method3)]).
	self assert: (( smc criticsOf: RBOnlyReadOrWrittenTemporaryRule new) anySatisfy: [:each| each = (MFClassA>>#method)]).