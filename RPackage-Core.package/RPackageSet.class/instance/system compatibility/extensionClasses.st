extensionClasses
	^extensionClasses ifNil: [ extensionClasses := self collectFromAllPackages: #extensionClasses ]