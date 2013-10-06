project: aString overrides: aBlock

	| spec projectSpec |
	projectSpec := 
		(self project projectSpec)
			name: aString;
			projectPackage: self project packageSpec;
			yourself.
	projectSpec projectPackage: self project packageSpec.
	spec := 
		(self project projectReferenceSpec)
			name: aString;
			projectReference: projectSpec;
			yourself.
	self root packages add: spec.
	self with: projectSpec during: aBlock
	