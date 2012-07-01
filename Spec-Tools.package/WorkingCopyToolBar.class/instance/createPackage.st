initialize
createPackage
	| name |
	
	name := UIManager default request: 'Name of package:' translated.
	name isEmptyOrNil ifFalse:
		[ PackageInfo registerPackageName: name.
		MCWorkingCopy forPackage: (MCPackage new name: name).]