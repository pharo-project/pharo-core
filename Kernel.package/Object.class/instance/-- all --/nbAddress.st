nbAddress
	"Return the native address"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout  
		function: #( int ( void ) )  
		emit: [:gen :proxy :asm | proxy receiver ]