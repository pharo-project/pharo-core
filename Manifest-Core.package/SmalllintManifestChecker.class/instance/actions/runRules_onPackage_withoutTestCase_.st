runRules: aCompositeRule onPackage: aPackage withoutTestCase: aBoolean

	rule := aCompositeRule.
	environment := RBPackageEnvironment package: aPackage.
	self flag: 'Instead of manually avoiding the testcases and traits? we should just modify the environment and subtract the testscases from the built package environment.'.
	environment allClassesAndTraitsDo: [ :class |
		(class isManifest
			or: [aBoolean and: [class allSuperclasses includes: TestCase ]]) 
					ifFalse: [
						self checkClass: class.
						self checkMethodsForClass: class ] ]