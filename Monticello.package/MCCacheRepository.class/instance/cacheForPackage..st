as yet unclassified
cacheForPackage: aPackage
	packageCaches ifNil: [packageCaches := Dictionary new].
	^ packageCaches at: aPackage ifAbsentPut: [MCPackageCache new]