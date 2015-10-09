installCompiledMethod
	| selector |
	selector := compiledMethod selector.
	"add to method dictionary."
	class methodDict at: selector put: compiledMethod.
	"Now flush the method cache"
	selector flushCache.
	ASTCache default at: compiledMethod put: ast.