pcOfBlockCreationBytecodeForBlockStartingAt: startpc in: method
	"Answer the pc of the push closure bytecode whose block starts at startpc in method.
	 May need to back up to include extension bytecodes."

	"*	224		11100000	aaaaaaaa			Extend A (Ext A = Ext A prev * 256 + Ext A)
	 *	225		11100001	bbbbbbbb			Extend B (Ext B = Ext B prev * 256 + Ext B)
	 **	250		11111010 	eeiiikkk		jjjjjjjj	Push Closure Num Copied iii (+ExtA//16*8) Num Args kkk (+ ExtA\\16*8) BlockSize jjjjjjjj (+ExtB*256). ee = num extensions"
	| numExtensions |
	self assert: (method at: startpc - 3) = 250.
	numExtensions := (method at: startpc - 2) >> 6.
	^startpc - 3 - (numExtensions * 2)