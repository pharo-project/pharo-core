compileAndInstallCompiledMethod
	"we install the old one as the compiler might need it"
	compiledMethod isRealPrimitive ifTrue: [ self generatePrimitiveWrapper ].
	self installCompiledMethod.
	self recompileAST.
	self installCompiledMethod.