packageExactlyMatchingExtensionName: anExtensionName
	"only look for a package for which the name match 'anExtensionName', making no difference about case. Return nil if no package is found"
	
	|tmpPackage tmpPackageName|
	packages keys do: [:aSymbol |
		(aSymbol sameAs: anExtensionName asSymbol)
			ifTrue: [ tmpPackage := self packageNamed: aSymbol ]].
	^ tmpPackage