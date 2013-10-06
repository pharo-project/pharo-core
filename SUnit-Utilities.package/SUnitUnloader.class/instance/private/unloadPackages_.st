unloadPackages: packagesToRemove
	
	(self sortedForRemovePackages: packagesToRemove) 
		do: [:aPackage |  (MCPackage named: aPackage name) unload ].