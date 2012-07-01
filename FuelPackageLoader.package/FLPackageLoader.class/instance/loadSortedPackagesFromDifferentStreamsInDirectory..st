loading
loadSortedPackagesFromDifferentStreamsInDirectory: aDirectory 
	"This method should only be used if you have stored with the method #storeInDifferentStreamsSortedPackageNames: packageNames onDirectory: aDirecotory. This method does the initialization of classes in the order the packages were originally provided.  "
	| packageNames packages |
	
	packages := OrderedCollection new.
	
	aDirectory readOnlyFileNamed: 'listOfPackagesInOrder.fuel' do: [:aStream | 
		aStream binary.
		packageNames := (FLMaterializer newDefault materializeFrom: aStream) root. 
	].

	packageNames do: [:aPackageName |
		aDirectory readOnlyFileNamed: (aPackageName,'.fuel') do: [:packageStream | 
			packageStream binary.
			packages add: (FLPackageLoader new loadFrom: packageStream).
			].
		].
	
	packages do: [:each |each initializeClasses. ].