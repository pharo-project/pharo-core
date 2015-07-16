compileAndInstallCompiledMethod
	"we install the old one as the compiler might need it"
	self installCompiledMethod.
	self recompileAST.
	self installCompiledMethod.