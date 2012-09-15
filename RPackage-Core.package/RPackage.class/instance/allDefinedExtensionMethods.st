system compatibility
allDefinedExtensionMethods
	
	"this method should return the same thing than PackageInfo >> extensionMethods. 
	This raised another problem: When asking a PackageInfo for its extension methods , it returns all extension methods included in this packageInfo and in all sub-categories. We should provide such accessor to stay compatible."
	| tmpMethods |
	tmpMethods := OrderedCollection new.
	self systemSubPackages do: [:tmpPackage |
		tmpMethods addAll: tmpPackage extensionMethods.
		].
	^ tmpMethods addAll: self extensionMethods; yourself