storing
storeInOneBundleSortedPackageNames: packageNames on: aStream
	"This method expects that the list of packageNames is sorted in the way they should be initialized. This method is useful if the list of packageNames comes for example, from a Metacello configuration. What we do is to serialize all packages together in the same stream and we also store the names and order of the packages. To import, you have to use #loadSortedPackagesFromOneBundle: that does not do the normal class side #initialize but instead it initializes the packages in the stored order."
	| package |
	
	aStream binary.
	FLSerializer serialize: packageNames on: aStream.
	
	packageNames do: [:aPackage |
			package := FLPackage named: aPackage.
			package mustInitialize: false.
			self exportPackage: package on: aStream.
		]
	