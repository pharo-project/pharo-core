overriddenMethods
	^overriddenMethods ifNil: [ overriddenMethods := self collectFromAllPackages: #overriddenMethods ]