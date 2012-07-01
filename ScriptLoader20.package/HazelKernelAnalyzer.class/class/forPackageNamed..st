instance creation
forPackageNamed: aPackageName
	^self new 
		list: (PackageInfo named: aPackageName) classes