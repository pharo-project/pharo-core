isDefinedAsPackageOrSubPackageInMC: aSymbol
	"a category has been added. 
	#'AST-Core'
	Now the question is to know whether AST-Core already exists as a package.
	"
	"self default isDefinedAsPackageOrSubPackageInMC: #Compression"
	"self default isDefinedAsPackageOrSubPackageInMC: #'Compression-Archives'"
	"self default isDefinedAsPackageOrSubPackageInMC: #'Collections'"
	"self default isDefinedAsPackageOrSubPackageInMC: #'Collections-Unordered'"
	"self default isDefinedAsPackageOrSubPackageInMC: #'Collections-Unordered-Test'"
	^ self allManagers 
			anySatisfy: [:each | self category: each packageName asSymbol matches: aSymbol ] 