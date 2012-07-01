operations
collectDependenciesWithMessage: messageString
	
	^ self requiredPackages collect: [:aPackage | 
			MCVersionDependency
				package: aPackage
				info:  (aPackage workingCopy currentVersionInfoWithMessage: messageString)]
	