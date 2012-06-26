PharoCore
shrinkToCore

	| packagesToUnload |
	
	packagesToUnload := (ScriptLoader new allCurrentPackages collect: [:p | p package name]) copyWithoutAll: (Smalltalk kernelPackageNames, Smalltalk corePackageNames).
	
	packagesToUnload do: [:packageName |
		ScriptLoader  new unloadPackageNamed: packageName ].
	
	self privCleanCore.