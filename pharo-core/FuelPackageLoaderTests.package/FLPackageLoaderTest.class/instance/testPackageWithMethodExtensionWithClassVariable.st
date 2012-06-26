tests
testPackageWithMethodExtensionWithClassVariable
	"Tests that the extension method is corretly rebinded on load."

	| categoryForMethodExtension |
	categoryForMethodExtension := self categoryForMethodExtensions.
	FLPackageLoaderDummy class 
		duringTestCompileSilently: 'initializeFortyTwo  ClassVariable := 42' 
		classified: categoryForMethodExtension. 

	"After next lines, the class method points to an old binding. (This is not the ideal way of testing because it is breaking consistency of the class.)"
	FLPackageLoaderDummy classPool removeKey: #ClassVariable.
	FLPackageLoaderDummy classPool at: #ClassVariable put: nil.

	self storeRemoveAndLoadStubPackage.

	"Bindings in the class method should be recalculated on load."	
	self shouldnt: [ FLPackageLoaderDummy initializeFortyTwo ] raise: Error.
	self assert: 42 equals: (FLPackageLoaderDummy classPool at: #ClassVariable).

