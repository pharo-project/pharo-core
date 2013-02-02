private (code generation)
emitRead
	"
	This method generates a native code for #at: method
	the primitive will read a single element at given index in array.
	the value type (elementType) and its size (elementSize) controlled by class side.
	
	Note, data (instance variable) can hold either variable-byte object (holding data in object memory), or
	instance of NBExternalAddress s
	
	!!!Note: no range checking for index!!!
	"
	^ (self nbCalloutIn: thisContext sender) 
		function: 'oop ( uint32 index , void * data )'
		emit: [:gen :proxy :asm |

			" index "
			asm 
				pop: asm EAX;
				dec: asm EAX;
				mov: self class elementSize to: asm ECX;
				mul: asm ECX;
				
				pop: asm ECX; "pointer to array first element -> ECX " 
				add: asm EAX with: asm ECX.  
							
			" EAX <- @data + (elementSize * (index - 1 ) ) "
				
			"Emit code to read a value from given address and return oop"
			(gen resolveType: self class elementType) readOop: asm EAX ptr generator: gen.
		]
