update40070
	"self new update40070"
	SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: 'Merging Opal branch with the trunk.'.
	self loadTogether: self script70 merge: false.
	CompilationContext initialize.
CCompilationContext initialize.
IRSistaV1BytecodeGenerator compileAll; initialize.
IRSqueakV3PlusClosuresBytecodeGenerator compileAll; initialize.

SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
self cleanRepositories.
