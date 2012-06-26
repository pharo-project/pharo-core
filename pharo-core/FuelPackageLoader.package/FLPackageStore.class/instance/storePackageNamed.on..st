storing
storePackageNamed: name on: aStream 
	| package |
	package := FLPackage named: name.
	self exportPackage: package on: aStream