at: index
	"Answer an element using 1-based index.
	Note, this method used as a template for my anonymous subclasses. "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self emitRead