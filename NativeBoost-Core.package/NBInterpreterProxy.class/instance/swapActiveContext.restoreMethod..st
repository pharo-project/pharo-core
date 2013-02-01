VM-extras
swapActiveContext: newContext restoreMethod: aMethodOop

	"call the 'swapActiveContextrestoreMethod' VM function "
	
	| fn |
	
	fn := NativeBoost loadFunction: 'swapActiveContextrestoreMethod' from: ''.
	self assert: (fn ~= 0).
		
	asm cdeclCall: [ :call |

		call push: aMethodOop value.
		call push: newContext value.
		
		asm 
			mov: fn asUImm to: EAX;
			call: EAX

	] alignment: gen stackAlignment 
