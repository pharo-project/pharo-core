loading
loadSortedPackagesFromOneBundle: aStream 
	"This method should only be used if you have stored with the method #storeInOneBundleSortedPackageNames: packageNames on: aStream. This method does the initialization of classes in the order the packages were originally provided.  "
	| packageNames package packages |
	aStream binary.
	packageNames := (FLMaterializer newDefault materializeFrom: aStream) root. 
	packages := OrderedCollection new.
	packageNames do: [:each | packages add: (FLPackageLoader new loadFrom: aStream)].
	packages do: [:each |each initializeClasses ].