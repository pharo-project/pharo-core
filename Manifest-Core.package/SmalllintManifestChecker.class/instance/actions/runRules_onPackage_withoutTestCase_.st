runRules: aCompositeRule onPackage: aPackage withoutTestCase: avoidTestCases

	rule := aCompositeRule.
	environment := RBPackageEnvironment package: aPackage.
	self flag: 'Instead of manually avoiding the testcases and traits? we should just modify the environment and subtract the testscases from the built package environment.'.
	environment classesDo: [ :class |
		(class isManifest
			or: [ avoidTestCases and: [ class isTestCase ]])
					ifFalse: [
						(environment definesClass: class) ifTrue: [ self checkClass: class ].
						self checkMethodsForClass: class ] ]