accessing
extensionMethods
	^((self collectFromAllPackages: #extensionMethods) collect: #asRingDefinition)
		asSet asArray