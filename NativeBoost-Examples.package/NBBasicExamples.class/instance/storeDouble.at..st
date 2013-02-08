double type
storeDouble: aDouble at: address
	" This method stores a double floating point value at given memory address.
	an address can be an instance of NBExternalAddress, or
	simple ByteArray with at least 8 bytes long, which will hold a 64bit floating-point value"
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin' error: errorCode>

	"We are using a pseudo-function prototype and supplying own assembler code,
	instead of making a call to external function.
	An address and aDouble arguments are pushed on stack after coercion. "
	
	^ self nbCallout 
		"An additional options may affect the code generation. If options are omitted, then code generator will use defaults
		(see NBFFICallout class>>defaultOptions)"

		 options: #( 
			"do not accept nil as a pointer arument. 
			This means that passing nil as address will cause a primitive failure."
		- optCoerceNilToNull  
		
			" accept a byte array as pointer. In our case, address to a first byte in byte array will be pushed on stack"
		+ optAllowByteArraysPtr
		
			" accept an instance of NBExternalAddress when coercing pointer arguments.
			In our case, this method can accept NBExternalAddres in its address argument"
		+ optAllowExternalAddressPtr
		
		);
		function: #( void (void * address, double aDouble) )  
		" A pseudo-function takes 2 arguments, and having no return value. In this case, method will always answer nil object.
		  Under cdecl calling convention, arguments are pushed on stack in reverse order,
		  so, first pushed aDouble , then address"
		
		emit: [:gen |  | asm |
			asm := gen asm.

			"Here , we expecting that an address value is on top of the stack"
			asm 
				pop: EDX;  "load an address value into EDX register by popping it from a stack"
			
				"now copy the floating point value (which is 8-bytes long) to the given address"
				mov: ESP ptr to: EAX;
				mov: EAX to: EDX ptr;  " store first 32bit part of 64bit double value"
			
				mov: ESP ptr + 4 to: EAX;
				mov: EAX to: EDX ptr + 4.  " store second 32bit part of 64bit double value"
			
		]
	
	