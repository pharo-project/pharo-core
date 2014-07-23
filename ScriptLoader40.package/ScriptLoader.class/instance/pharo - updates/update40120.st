update40120
	"self new update40120"
	SmalltalkImage compilerClass: Compiler.
	self withUpdateLog: '13662 Merging Opal branch with trunk
	https://pharo.fogbugz.com/f/cases/13662

'.
	self loadTogether: self script120 merge: false.
	Smalltalk at: #IRSqueakV3PlusClosuresBytecodeGenerator ifPresent: [ :codeGen | codeGen compileAll; initialize ].
    Smalltalk at: #IRSistaV1BytecodeGenerator ifPresent: [ :codeGen | codeGen compileAll; initialize ].
    SmalltalkImage compilerClass: OpalCompiler.
	self flushCaches.
self cleanRepositories.
