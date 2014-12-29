createClosureScanBlock
	"Answer a block argument for InstructionStream>>scanFor: that answers true
	 for block closure creation bytecodes.  ote that with this interface we can't answer
	 true for the extension in front of a push closure bytecode and so the interface may
	 have to change at some point."

	"*	224	11100000	aaaaaaaa			Extend A (Ext A = Ext A prev * 256 + Ext A)
	 *	225		11100001	bbbbbbbb	Extend B (Ext B = Ext B prev * 256 + Ext B)
	 **	250		11111010 	eeiiikkk		jjjjjjjj		Push Closure Num Copied iii (+ExtA//16*8) Num Args kkk (+ ExtA\\16*8) BlockSize jjjjjjjj (+ExtB*256). ee = num extensions"
	^[:b| b = 250]