tests
testPolymorphicWithPackageInfo
	"tests we are polymorphic with PackageInfo (needed to ensure monticello does exactly the same as before)"
	| packageSet packageInfo |
	
	self flag: #removeMe. "This method is temporal, it has to be removed with PackageInfo"
	
	packageSet := RPackageSet named: 'Kernel'.
	packageInfo := PackageInfo named: 'Kernel'.
	
	self 
		comparePackageSet: packageSet classes 
		withPackageInfo: packageInfo classes.
	self 
		comparePackageSet: packageSet systemCategories 
		withPackageInfo: packageInfo systemCategories.	
	self 
		comparePackageSet: packageSet methods asSet
		withPackageInfo: packageInfo methods asSet. "PackageInfo includes duplicates"
	self 
		comparePackageSet: packageSet overriddenMethods
		 withPackageInfo: packageInfo overriddenMethods.
	self 
		comparePackageSet: packageSet definedClasses 
		withPackageInfo: packageInfo definedClasses.
	self 
		comparePackageSet: packageSet extensionMethods 
		withPackageInfo: packageInfo extensionMethods.