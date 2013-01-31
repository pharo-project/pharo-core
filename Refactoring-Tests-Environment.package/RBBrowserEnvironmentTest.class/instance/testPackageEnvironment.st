testing-environments
testPackageEnvironment
	| aPackageEnvironment |
	aPackageEnvironment := universalEnvironment
		forPackageNames: (Array with: 'Refactoring-Tests-Environment' with: 'Refactoring-Environment').
	self universalTestFor: aPackageEnvironment.
	self assert: (aPackageEnvironment implementorsOf: #testPackageEnvironment) numberSelectors = 1