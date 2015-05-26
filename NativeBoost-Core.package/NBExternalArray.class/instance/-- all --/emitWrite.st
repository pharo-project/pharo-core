emitWrite
	"
	This method generates a native code for #at:put: method.
	The primitive will store a single value at given index in array.
	The value type (elementType) and its size (elementSize) controlled by class side.
	
	Note, data can be either variable-byte object (holding data in object memory), or
	instance of NBExternalAddress (holding data in external memory).
	
	To conform with common #at:put: behavior for collections, answer the value we're just put. 
	
	!!!Note: no range checking for index!!!
	
	"
	
	^ (self nbCalloutIn: thisContext sender)
		function: ' oop ( oop value , uint32 index , void * data , ' , self class elementType , ' value )'
		emit: [:gen :proxy :asm | | oop |
			
			oop := gen reserveTemp.
			"save value oop into temp to answer it when we done"
			asm pop: asm EAX;
				mov: asm EAX to: oop.
				
			" index "
			asm 
				pop: asm EAX;
				dec: asm EAX;
				mov: self class elementSize to: asm ECX;
				mul: asm ECX;
				
				pop: asm ECX; "pointer to array first element " 
				add: asm EAX with: asm ECX.  							

			" EAX now = @data + (elementSize * (index - 1 ) ) "
				
			self emitCopy: asm.

			"and finally, return original object "
			asm mov: oop to: asm EAX .
		].
	
