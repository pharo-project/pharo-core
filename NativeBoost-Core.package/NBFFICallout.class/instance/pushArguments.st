code generation
pushArguments

	" argument indexes pushed on ST stack are: 

	argType   ST stack  C stack 
	   index       index        push order
	    1              2             2
	    2              1             1
	    3              0             0
	"
	asm decorateWith: 'FFI: prepare arguments' during: [   
		fnSpec arguments do: [:arg | arg prepareArgumentUsing: self ] ].

	"both cdecl/apicall using reverse argument order on stack"
	fnSpec arguments notEmpty ifTrue: [
		asm decorateWith: 'FFI: pushing arguments' during: [   
			fnSpec arguments reverseDo: [:arg | 
				asm noticePush: arg stackSize forCall: callInfo.
				arg emitPush: self ] ]
	].

	fnSpec returnType 
		prepareReturnValue: self for: callInfo.