private
mmapLength: bytesToAllocate prot: protFlags flags: mapFlags into: returnValueBuffer
		
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	"Note:  mmap using 32-bit offset, while mmap64 - 64bit one"

	^ self nbCallout 
		options: #( - optDirectProxyFnAddress );
		function: #(
			NBBootstrapUlong ( 0, uint bytesToAllocate, int protFlags, int mapFlags,
				-1,  0 "offset" )
		
		) emit:  [:gen | | mmap |
			mmap := NativeBoost forCurrentPlatform getGlobalSymbolPointer: 'mmap'.
			gen asm mov: mmap asUImm32 to: gen asm EAX.
			gen asm call: gen asm EAX
			]

 