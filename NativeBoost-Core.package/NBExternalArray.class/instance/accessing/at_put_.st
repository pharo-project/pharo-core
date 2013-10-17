at: index put: value
	"Set value at 1-based index.
	Note, this method used as a template for my anonymous subclasses. "
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self emitWrite 