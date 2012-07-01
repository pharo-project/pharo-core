instance creation
forMethod: aMethod "<CompiledMethod>" methodNode: methodNode "<MethodNode>"
	"Uncached instance creation method for private use or for tests.
	 Please consider using forMethod: instead."
	^self new
		forMethod: aMethod
		methodNode: methodNode