manifest
cleanAllManifest
	|manifests|
	
	manifests := environment packages collect: [:cl |
		BuilderManifest on: cl] as: Set.
	
	manifests do: [:each |
		each cleanUp]