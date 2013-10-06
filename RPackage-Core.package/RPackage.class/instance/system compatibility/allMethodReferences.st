allMethodReferences
	
	"this method should return the same thing that PackageInfo >> methods. 
	This raised another problem: When asking a PackageInfo for its methods (it's the same for classes), it returns all methods included in this packageInfo and in all sub-categories. We should privide such accessor to stay compatible.
	(RPackageOrganizer default packageNamed: 'HelpSystem-Core' asSymbol) allMethodReferences.
	(PackageInfo named: 'HelpSystem-Core' asSymbol) methods
	"
	"(RPackageOrganizer default packageNamed: 'Settings-System' asSymbol) allMethodReferences.
	(PackageInfo named: 'Settings-System' asSymbol) methods"
	"
	(RPackageOrganizer default packageNamed: 'CollectionsTests' asSymbol) allMethodReferences.
	(PackageInfo named: 'CollectionsTests' asSymbol) methods
	"
	|tmpMethods|
	self flag: #stef. "no senders"
	tmpMethods := OrderedCollection new.
	self systemSubPackages do: [:tmpPackage |
		tmpMethods addAll: tmpPackage methodReferences.
		].
	^ tmpMethods addAll: self methodReferences; yourself