tests
testPackageWithMethodExtensionWithClassSideVariable
	"Tests that the extension method is corretly rebinded on load."

	| categoryForMethodExtension |
	categoryForMethodExtension := self categoryForMethodExtensions.
	FLPackageLoaderDummy class 
		duringTestCompileSilently: 'initializeFortyTwo  classInstanceVariable := 42' 
		classified: categoryForMethodExtension. 
	FLPackageLoaderDummy classInstanceVariable: nil.

	self storeRemoveAndLoadStubPackage.

	"Bindings in the class method should be recalculated on load."	
	self shouldnt: [ FLPackageLoaderDummy initializeFortyTwo ] raise: Error.
	self assert: 42 equals: FLPackageLoaderDummy classInstanceVariable.

