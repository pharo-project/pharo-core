installCompiledMethod
	class basicAddSelector: self selector withMethod: compiledMethod.
	ASTCache default at: compiledMethod put: ast.