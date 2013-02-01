proxy functions
positive64BitIntegerFor
		
	"Assume integer value is in EAX:EDX register pair.
	Make a call as if we push 2 arguments "
	| fn |
	
	fn := self functions at: #positive64BitIntegerFor: .
	
	^ self call: fn arguments: { asm EAX. asm EDX }