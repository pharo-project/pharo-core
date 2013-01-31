running
runPackage: aString
	^ self runClasses: (PackageInfo named: aString) classes named: aString