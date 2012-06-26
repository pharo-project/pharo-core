mc synchronization tofix
shouldDefineAPackage: aSymbol
	"we should define a package if it is not created and it correspond to an MC package"
	"now this is not clear that we need that since an MC package is only created after creating a category"
	"Watch out! Not tested"
	
	^ (self includesPackageNamed: aSymbol)
			ifTrue: [false]
			ifFalse: [ (self isDefinedPackageInMC: aSymbol) 
						ifTrue: [ true]
						ifFalse: [ (self isDefinedAsPackageOrSubPackageInMC: aSymbol)]]