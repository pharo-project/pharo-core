*RPackage-SystemIntegration
hasPackageMatchingExtensionName: anExtensionName

	|tmpPackage tmpPackageName|
	
	(self hasPackageExactlyMatchingExtensionName: anExtensionName)
		ifTrue: [ ^true ].
	
	^packages keys anySatisfy: [:aSymbol | aSymbol asString,'*'  match: anExtensionName ].
	