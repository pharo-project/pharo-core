mc synchronization tofix
isDefinedPackageInMC: aSymbol
	"Answer whether a package is already defined with the exact name"
	"self default isDefinedAsSubPackageInMC: #Compression"
	"self default isDefinedAsSubPackageInMC: #'Compression-Archives'"
	^ self allManagers anySatisfy: [:each | each packageName asSymbol = aSymbol]