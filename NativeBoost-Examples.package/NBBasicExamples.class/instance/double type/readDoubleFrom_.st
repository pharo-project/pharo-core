readDoubleFrom: address
	" This method loads the double from given external address.
	an address can be an instance of NBExternalAddress, or
	simple ByteArray with at least 8 bytes long, which holds a double floating value"
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin' error: errorCode>

	"We are using a pseudo-function prototype and supplying own assembler code,
	instead of making a call to external function.
	In given example, an address argument , after coercion is pushed on stack. "
	
	^ self nbCallout

		"An additional options may affect the code generation. If options are omitted, then code generator will use defaults
			(see NBFFICallout class>>defaultOptions)"
		options: #( 
			"do not accept nil as a pointer argument. 
			This means that passing nil as address will cause a primitive failure."
		- optCoerceNilToNull  
		
			" accept a byte array as pointer. In our case, address to a first byte in byte array will be pushed on stack"
		+ optAllowByteArraysPtr
		
			" accept an instance of NBExternalAddress when coercing pointer arguments.
			In our case, this method can accept NBExternalAddres in its address argument"
		+ optAllowExternalAddressPtr
		
		);

		cdecl;  "Use cdecl C calling convention. This can be actually omitted, because it is default convention used by code generator. "		
				
		function: #( double ( void * address) )  
		" A pseudo-function takes 1 argument, and returns double value.
		  Under cdecl call convention, all floating point return types is returned in fp(0) CPU register"
		
		emit: [:gen |  | asm |
			asm := gen asm.

			"Here , we expecting that an address value is already pushed on stack"
			
			asm 
				pop: asm EAX;  "load an address value into EAX register by popping a stack"
				fld: (asm EAX ptr64). "load a floating point value from memory, at base address, held in EAX register into fp(0) register,
				we are using #ptr64, to indicate that memory operand size is 64bits long"
			
			" return value set, we are done. A code generator will take care for emitting code, which converts
			a double floating point value into smalltalk object. "
		]
