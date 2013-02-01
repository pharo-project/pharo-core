tests
testToDoOf

	| smc package rule |
	
	rule  := RBCompositeLintRule allGoodRules.
	package := PackageInfo allPackages detect: [:p  | p packageName  = 'Manifest-Resources-Tests'].

	smc := SmalllintManifestChecker  new runRules:  rule onPackage:  package. 
	

	self assert: (( smc toDoOf: RBOnlyReadOrWrittenTemporaryRule new) anySatisfy: [:each| each = (MFClassB>>#method3)]).
	self deny: (( smc toDoOf: RBOnlyReadOrWrittenTemporaryRule new) anySatisfy: [:each| each = (MFClassB>>#method2)]).