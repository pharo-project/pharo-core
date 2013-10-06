testRecompile
	compiledMethod ast.
	
	self assert: (ASTCache default includesKey: compiledMethod).
	
	"recompile the test method and avoid referring to the old method"
	compiledMethod := compiledMethod recompile.
	"trigger garbage collection to free the ASTCache"
	Smalltalk garbageCollect.
	
	self deny: (ASTCache default includesKey: compiledMethod).