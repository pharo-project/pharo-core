jitMethodAssembly: aBlock
	"This method will directly inline the nativecode in the jited
	method thus eliminating the overhead of running through the 
	whole primitive activation each time the method is invoked.
	Unlike in the cdecl style NativeBoost code generation the return
	value is passed in EDX and not in EAX."
	^ self handleFailureInJit: thisContext sender nativeCode:
		[:gen | aBlock cull: gen cull: gen proxy cull: gen asm. gen bytes ]
