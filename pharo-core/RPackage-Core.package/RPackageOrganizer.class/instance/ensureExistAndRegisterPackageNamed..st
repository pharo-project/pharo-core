public registration
ensureExistAndRegisterPackageNamed: aSymbol
	"A new package is now available and declared in the receiver."
	
	| aPackage |
	aPackage := packages at: aSymbol asSymbol ifAbsentPut: [self packageClass named: aSymbol].
	aPackage extendedClasses do: [ :extendedClass|
			self registerExtendingPackage: aPackage forClass: extendedClass].
	aPackage definedClasses do: [ :definedClass|
			self registerPackage: aPackage forClass: definedClass].
	self announcer announce: (RPackageCreated to: aPackage).
	^ aPackage