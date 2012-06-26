storing
storeInDifferentStreamsSortedPackageNames: packageNames onDirectory: aDirecotory
	"This method expects that the list of packageNames is sorted in the way they should be initialized. This method is useful if the list of packageNames comes for example, from a Metacello configuration. What we do is to serialize each package in a different stream (a file named as the package name in the provided directory) and we also store the names and order of the packages. To import, you have to use #loadSortedPackagesFromDifferentStreamsInDirectory: that does not do the normal class side #initialize but instead it initializes the packages in the stored order."
	| package |
	
	aDirecotory forceNewFileNamed: ('listOfPackagesInOrder.fuel') do: [:aStream |
		aStream binary.
		FLSerializer serialize: packageNames on: aStream.
	].

	packageNames do: [:aPackage |
		 aDirecotory forceNewFileNamed: (aPackage, '.fuel') do: [:aStream |
			aStream binary.
			package := FLPackage named: aPackage.
			package mustInitialize: false.
			self exportPackage: package on: aStream.
		]
	]