*FuelPackageLoader
foreignCategories
	
	"We cannot remove Fuel extension methods because they are needed by Fuel itself!"
	^(self organization categories select: [ :aCategory | aCategory beginsWith: '*' ]) reject: [:each | each beginsWith: '*Fuel']