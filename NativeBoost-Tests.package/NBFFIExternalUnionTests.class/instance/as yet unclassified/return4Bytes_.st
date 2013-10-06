return4Bytes: asm
	NativeBoost platformId ~= NativeBoostConstants linux32PlatformId 
		ifTrue:[
			asm pop: asm EAX]
		ifFalse:[
			asm 
				pop: asm EAX;
				pop: asm EDX;
				mov: asm EDX to: asm EAX ptr; 
				push: asm EAX]