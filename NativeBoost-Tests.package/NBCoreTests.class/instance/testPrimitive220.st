tests
testPrimitive220
	"
	Test a protocol for installing/removing native code directly.
	"
	| asm label method gen |
	[ ^ self ] value.  " this code will crash your VM "
 	method := self class>>#anotherMethodWithPrimitive220.
	NBNativeCodeGen removeNativeCodeFrom: method.
	
	method := self class>>#anotherMethodWithPrimitive220.
	self assert: method hasNativeCode not.
	
	
	asm := NativeBoost forCurrentPlatform newAssembler noStackFrame.
	
	label := asm uniqueLabelName: 'done'.
	gen := NBNativeCodeGen newForMethod: method.
	
	asm := gen asm. 
	asm noStackFrame.
	
	asm push: 999.
	gen proxy callFn: (gen proxy functions at:#primitiveFailFor: ). 
	asm 
		int3;
		jmp: label;
		mov: 1 to: asm EDX;
	label: label.

	NBNativeCodeGen installNativeCode: asm bytes into: method.

	( self class>>#anotherMethodWithPrimitive220 ) forceJIT.
	
	^ self anotherMethodWithPrimitive220 
