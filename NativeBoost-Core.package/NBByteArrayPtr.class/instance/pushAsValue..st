emitting code
pushAsValue: gen

	"push a pointer to first indexable field of ByteArray, 
	which is always oop + BaseHeaderSize  
	"
	| asm proxy |
	asm := gen asm.
	proxy := gen proxy.
	loader emitLoad: gen.

	asm decorateWith: 'NBByteArrayPtr>>pushAsValue:' during: [  	
		asm 
			add: asm EAX with: proxy objectFormat varBytesFirstField;
			push: asm EAX ]