factory
createMethodNamed: aSymbol realParent: aClass
	"Create a method whose selector is aSymbol whose class is the Smalltalk class aClass. Other creation methods may use ClassDefinition instead of Smalltalk class."

	^(aClass >> aSymbol asSymbol) asActiveRingDefinition 