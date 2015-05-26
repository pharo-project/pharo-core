installCompiledMethod
	| class |
	class := ast compilationContext getClass.
	class basicAddSelector: self selector withMethod: compiledMethod.