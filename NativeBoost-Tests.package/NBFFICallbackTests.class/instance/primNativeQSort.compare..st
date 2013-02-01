qsort callouts
primNativeQSort: base compare: nativeCallback
"Here, the base must be a ByteArray instance 
	num, the number of elements in it
	width = 4

Call qsort function:	
	void qsort(
	   void *base, - array ptr
	   size_t num,  - number of elements
	   size_t width,  - size of element
	   int (__cdecl *compare )(const void *, const void *) 
	);

	"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(void qsort (byte* base, NBByteArraySize base, 1, NBExternalAddress nativeCallback))
		module: NativeBoost CLibrary
