mc related utils
addPackage: aString
	"to be tested" 
	
	| workingCopy |
	PackageInfo registerPackageName: aString.
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: aString)