*RPackage-SystemIntegration
packageMatchingExtensionName: anExtensionName

	"return nil if no package i found"
	|tmpPackage tmpPackageName|
	"we first look if their is a package matching exactly the name specified"
	packages keys do: [:aSymbol |
		(aSymbol sameAs: anExtensionName asSymbol)
			ifTrue: [^ self packageNamed: aSymbol]
		].
	
	"if no package was found, we try to find one matching the begining of the name specified"
	tmpPackageName := ''.
	packages keys do: [:aSymbol |
		(aSymbol asString,'*'  match: anExtensionName)
			ifTrue: [
				"we keep the longest package name found"
				(aSymbol size > tmpPackageName size) ifTrue: [
					tmpPackageName := aSymbol.
					tmpPackage := self packageNamed: aSymbol
					].
				]
		].
	^ tmpPackage