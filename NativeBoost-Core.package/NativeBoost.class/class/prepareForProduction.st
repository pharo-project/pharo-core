production mode support
prepareForProduction
	"make sure all methods in image, which using NB call primitive, having captured method's argument names
	(so later, image can run NB code without requiring access to source code)"
	
	CompiledMethod allInstances do: [ :method |
		method hasNativeCallPrimitive ifTrue: [ 
			"that will make sure that names are cached"
			 method nbArgumentNames ]
	]