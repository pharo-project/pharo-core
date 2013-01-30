*Tools-Browser
browseAllSendersOf: aLiteral localToPackage: packageNameOrInfo
	"Create and schedule a message browser on each method in the given package
	 that refers to aLiteral. For example,
		SystemNavigation new browseAllSendersOf: #open:label: localToPackage: 'Tools'."

	^ self headingAndAutoselectForLiteral: aLiteral do:
		[:label :autoSelect|
		self browseMessageList: (self allCallsOn: aLiteral localToPackage: packageNameOrInfo) asSortedCollection
			name: label, ' local to package ', (self packageInfoFor: packageNameOrInfo) name
			autoSelect: autoSelect]