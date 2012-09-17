tests
testPolymorphicWithPackageInfo
	"tests we are polymorphic with PackageInfo (needed to ensure monticello does exactly the same as before)"
	| packageSet packageInfo |
	
	self flag: #removeMe. "This method is temporal, it has to be removed with PackageInfo"
	
	packageSet := RPackageSet named: 'Kernel'.
	packageInfo := PackageInfo named: 'Kernel'.
	
	self assert: (self equalElementsBetween: packageSet classes and: packageInfo classes). 
	self assert: (self equalElementsBetween: packageSet systemCategories and: packageInfo systemCategories).
	self assert: (self equalElementsBetween: packageSet methods and: packageInfo methods).
	self assert: (self equalElementsBetween: packageSet overriddenMethods and: packageInfo overriddenMethods).
	self assert: (self equalElementsBetween: packageSet definedClasses and: packageInfo definedClasses).
	self assert: (self equalElementsBetween: packageSet extensionMethods and: packageInfo extensionMethods).