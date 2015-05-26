isManifest
	(self name beginsWith: 'Manifest')
		ifTrue: [ self deprecated: 'Package Manifest should now inherit from PackageManifest class' ].
	^ false