allDefinedClasses
	
	"this method should return the same thing than PackageInfo >> classes. 
	This raised another problem: When asking a PackageInfo for its classes , it returns all classes included in this packageInfo and in all sub-categories. We should provide such accessor to stay compatible.
	(RPackageOrganizer default packageNamed: 'HelpSystem-Core' asSymbol) allDefinedClasses.
	(PackageInfo named: 'HelpSystem-Core' asSymbol) classes.
	(PackageInfo named: 'HelpSystem-Core' asSymbol) classes reject: [:each | (RPackageOrganizer default packageNamed: 'HelpSystem-Core' asSymbol) allDefinedClasses includes: each]. 	(RPackageOrganizer default packageNamed: 'CollectionsTests' asSymbol) allDefinedClasses sort: [:a :b | a name < b name].
	(PackageInfo named: 'CollectionsTests' asSymbol) classes.
	"
	|tmpClasses|
	self flag: #stef. "no sender"
	tmpClasses := OrderedCollection new.
	self systemSubPackages do: [:tmpPackage |
		tmpClasses addAll: tmpPackage definedClasses.
		].
	^ tmpClasses addAll: self definedClasses; yourself