accessing
nativeCode: aByteArray platformId: aPlatformCode sourcePointer: srcPtr
	"Embed the native code into compiled method trailer.
	The resulting trailer format is following:
	<native code
	....
	>
	<code offset - 2 bytes (also equals to trailer size)>
	<platform id code - 2 bytes>
	<trailer byte>	
	"
	self clear.
	kind := #NativeCodeTrailer.
	data := Array with: aPlatformCode with: aByteArray with: srcPtr.
	self encode.
