caching
cachePackageAt: aString ifAbsentPut: aBlock
	^ self cachePackages at: aString asSymbol ifAbsentPut: aBlock