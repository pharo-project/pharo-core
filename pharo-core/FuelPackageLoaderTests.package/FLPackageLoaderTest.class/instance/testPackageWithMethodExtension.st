tests
testPackageWithMethodExtension
	"It should serialize package's extension methods."

	| classWithExtension categoryForMethodExtension |
	categoryForMethodExtension := self categoryForMethodExtensions.
	classWithExtension := FLPackageLoaderDummy.
	classWithExtension duringTestCompileSilently: 'fortyTwo ^42' classified: categoryForMethodExtension. 
	
	self storeRemoveAndLoadStubPackage.
	
	self assert: (classWithExtension includesSelector: #fortyTwo).
	self assert: categoryForMethodExtension equals: (classWithExtension whichCategoryIncludesSelector: #fortyTwo).
	self assert: (PackageOrganizer default packageNames includes: classFactory packageName)