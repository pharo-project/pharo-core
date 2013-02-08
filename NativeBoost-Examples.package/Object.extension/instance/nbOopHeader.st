*NativeBoost-Examples
nbOopHeader
" This method provided only for educational purposes. 
 Do not rely on it, if you wanna keep your code portable among various object memory formats "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	" simply return an object header word in a form which it is "
	
	^ self nbCallout   
		function:  #( uint (oop self) )
		emit: [:gen :proxy :asm |  
			asm 
				pop: asm EAX;
				push: asm EAX.
				
			proxy isIntegerObject: asm EAX.
			asm or: asm EAX with: asm EAX;
				jne: #notOop;
				pop: asm EAX;
				mov: asm EAX ptr to: asm EAX; "load the header"
				jmp: #exitt;
				label: #notOop;
				mov: 0 to: asm EAX;
			label: #exitt
		].