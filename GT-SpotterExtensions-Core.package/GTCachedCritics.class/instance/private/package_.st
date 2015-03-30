package: aPackage
	^ self packages at: aPackage packageName ifAbsentPut: [ RBPackageEnvironment package: aPackage ]