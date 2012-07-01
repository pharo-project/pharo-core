storing
storePackagesNamed: names on: aStream 
	| package |
	package := FLPackage withPackages: names.
	self exportPackage: package on: aStream