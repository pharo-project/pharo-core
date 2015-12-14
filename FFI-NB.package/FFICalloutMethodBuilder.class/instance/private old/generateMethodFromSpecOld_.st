generateMethodFromSpecOld: functionSpec
	|  ffiPragmaNode methodNode |
	ffiPragmaNode := self createFFIPragmaFromSpec: functionSpec.
	methodNode := self createFFIMethodFrom: ffiPragmaNode.
	^ methodNode generate: self method trailer
	