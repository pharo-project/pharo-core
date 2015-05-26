bootstrapLoadSymbol: symbolName ofLength: symbolLen fromModule: moduleHandle
into: returnValueBuffer

	" call an interpreter proxy function 
void *ioLoadSymbolOfLengthFromModule(sqInt functionNameIndex, sqInt functionNameLength, void *moduleHandle)
		
	to retrieve an external module handle
	
	Returning a long 32 bit value may trigger GC which can move native code.
	In order to avoid that, we don't use any proxy function, which may lead to memory allocation.
	Thus, we store result into a byte array.
	"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		options: #( - optDirectProxyFnAddress optAllowExternalAddressPtr);
		function: #( NBBootstrapUlong (byte * symbolName , long symbolLen, ulong moduleHandle) )
		emit:  [:gen |
			gen proxy callFn: #ioLoadSymbol:OfLength:FromModule: 
		] 