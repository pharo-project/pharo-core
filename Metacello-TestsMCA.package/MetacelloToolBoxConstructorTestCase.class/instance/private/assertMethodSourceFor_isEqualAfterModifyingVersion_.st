assertMethodSourceFor: configurationName isEqualAfterModifyingVersion: versionString
	| cl original modified constructor pragma |
	constructor := MetacelloToolBoxConstructor new.
	constructor configuration: (cl := Smalltalk at: configurationName asSymbol) new.
	pragma := (constructor extractAllVersionPragmas at: versionString) at: 1.
	original := (cl sourceCodeAt: pragma selector) asString.
	[ 
	(MetacelloToolBox configurationNamed: configurationName)
		modifyVersionMethodForVersion: versionString;
		commitMethod ] on: MetacelloCannotUpdateReleasedVersionError do: [ :ex | ex resume ].
	modified := (cl sourceCodeAt: pragma selector) asString.
	self assert: original = modified.
