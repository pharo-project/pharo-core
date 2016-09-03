packageManifestOrNil
	^ self definedClasses
		detect: [ :each | each isManifest ]
		ifNone: [ nil ]