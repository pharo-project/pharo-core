testing
testInstalledMethodsWithIncorrectTrailerKind
	| incorrectMethods |
	incorrectMethods := SystemNavigation new installedMethodsWithIncorrectTrailerKind.
	self assert: incorrectMethods isEmpty.
	