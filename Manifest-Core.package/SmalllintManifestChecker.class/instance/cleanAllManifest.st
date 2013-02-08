manifest
cleanAllManifest
	|manifests|
	
	manifests := environment packages collect: [:cl |
		BuilderManifest of: cl] as: Set.
	
	manifests do: [:each |
		each cleanUp]