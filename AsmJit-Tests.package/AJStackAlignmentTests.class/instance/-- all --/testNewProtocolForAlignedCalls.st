testNewProtocolForAlignedCalls

	| asm callInfo |
	
	asm := self newAssembler.
	
	
	asm cdeclCall:  [:call |

		call 
			push: EAX;
			push: EAX;
			push: 4.

		asm call: EAX.
		callInfo := call.
	] alignment: 32.
	
	
	asm generatedCode. "to analyze instructions"
	self assert: callInfo stackSize = 12.
	self assert: callInfo needsAlignment 

	