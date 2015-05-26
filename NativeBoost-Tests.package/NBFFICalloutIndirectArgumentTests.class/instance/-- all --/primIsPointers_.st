primIsPointers: anObject
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCallout function: #(NBBool (oop anObject)) 
		emit: [ :gen :proxy :asm | 
			asm pop: asm EAX. 
			proxy isPointers:  asm EAX 
		]