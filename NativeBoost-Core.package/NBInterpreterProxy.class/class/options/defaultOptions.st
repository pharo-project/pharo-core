defaultOptions
	"Default options for proxy.
	Proxy options is applied before default options of generator,
	so generator can override them"

	^ #(
	"call proxy functions directly, instead of loading their address indirectly via interpreterProxy struct"
	#optDirectProxyFnAddress
		
	"use a direct ST stack pointer, initially retrieved using #getStackPointer"	
	 #optUseStackPointer 
	
	)
