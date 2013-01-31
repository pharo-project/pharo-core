testing-environments
testNotEnvironment
	| notPrintStringEnvironment printStringEnvironment |
	printStringEnvironment := universalEnvironment referencesTo: #printString.
	notPrintStringEnvironment := printStringEnvironment not.
	self universalTestFor: notPrintStringEnvironment.
	self assert: (notPrintStringEnvironment referencesTo: #printString) isEmpty.
	self assert: (notPrintStringEnvironment not includesClass: RBBrowserEnvironmentTest).
	self assert: (notPrintStringEnvironment not 
			includesSelector: #testNotEnvironment
			in: RBBrowserEnvironmentTest)