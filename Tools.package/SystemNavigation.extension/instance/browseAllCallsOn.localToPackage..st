*Tools-Browser
browseAllCallsOn: aLiteral localToPackage: packageNameOrInfo
	"Create and schedule a message browser on each method in the given package
	 that refers to aLiteral. For example,
		SystemNavigation new browseAllCallsOn: #open:label: localToPackage: 'Tools'."

	^ self browseAllSendersOf: aLiteral localToPackage: packageNameOrInfo