installCompiledMethod
	
	"this needs to be even further reduced: all methods executed untill and including #flushCache need to be
	 provided as rf* copies that then we never annotate/invalidate"
	
	| selector |
	selector := compiledMethod selector.
	"add to method dictionary."
	class methodDict at: selector put: compiledMethod.
	"Now flush the method cache"
	selector flushCache.
	ASTCache default at: compiledMethod put: ast.