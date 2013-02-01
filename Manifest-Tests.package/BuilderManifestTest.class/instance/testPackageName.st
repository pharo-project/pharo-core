tests
testPackageName
	| manifestBuilder cl |
	
	cl := Smalltalk globals at: #ManifestManifestResourcesTests ifAbsent: [ nil ].
	cl
		ifNotNil: [ 
			cl
				removeFromChanges;
				removeFromSystemUnlogged ].
			
	manifestBuilder := BuilderManifest on: MFClassA.
	
	self assert: manifestBuilder packageName = 'Manifest-Resources-Tests'