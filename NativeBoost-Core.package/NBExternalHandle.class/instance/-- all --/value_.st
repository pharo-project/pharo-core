value: aPositiveInteger
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self nbCallout function: #(oop (size_t aPositiveInteger)) emit: [:gen :proxy :asm |
		
		self class instanceSize = 4 ifTrue: [ | temp |

			proxy receiver.
			proxy varBytesFirstFieldOf: asm EAX.
			
			asm  
				mov: asm ESP ptr to: asm EDX;
				mov: asm EDX to: asm EAX ptr.
					
		] ifFalse: [	
			"not implemented yet, sorry"
			self notYetImplemented.
		].
	
		proxy receiver 
	]
