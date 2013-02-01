tests
testCreationManifestOn
	| manifestBuilder cl |
	manifestBuilder := BuilderManifest new.
	cl := Smalltalk globals at: #ManifestManifestResourcesTests ifAbsent: [ nil ].
	cl
		ifNotNil: [ 
			cl
				removeFromChanges;
				removeFromSystemUnlogged ].
	self assert: (manifestBuilder manifestOf: MFClassA ) isNil.
	self assert: (BuilderManifest on: MFClassA) notNil.
	self assert: (manifestBuilder manifestOf: MFClassA) notNil