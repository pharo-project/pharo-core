callback leave code
generateCallbackLeaveCodeFor: callbackClass leaveAddr: leaveAddress

	gen := (NBNativeFunctionGen new
		callType: callbackClass callType;
		fnSpec: callbackClass fnSpec;
		yourself).

	callbackClass numArgs: gen fnSpec arguments size.
	
	"optUseStackPointer should be turned off!!!"
	gen parseOptions: #( + optProxyLabels - optUseStackPointer +optReserveCallgateSpace  "+optDebug" ).
			
	^ gen generate: [:g |
			
		asm := gen asm.
		proxy := gen proxy.

"see #primLeave:stackPtr:contextOop:returnValue:primitiveMethod: 
for arguments stack order
"
		"coerce the oop to return type"
		proxy stackValue: 1.

"******** currently only return types returned via EAX supported *********"
		gen fnSpec returnType coerceOopToOperand: gen ifFailedJumpTo: #failed.

	"keep return value(s) on stack"
		asm
			push: EDX; 
			push: EAX.

		proxy stackValue: 3. "saved EBP"
		proxy positive32BitValueOf: EAX.

		asm push: EAX.
		proxy ifFailedJumpTo: #failed.

		proxy swapActiveContext: [ proxy stackValue: 2 ] restoreMethod: [ proxy stackValue: 0 ].
	
		"swapactivecontext returns 0 on failure"
		asm 
			cmp: EAX with: 0;
			je: #failed. 
			
		asm 
			mov: leaveAddress asUImm to: EAX;
			jmp: EAX. "jump to callback leave-to-C code. see #generateCallbackEnterCodeFor:  " 
				
	asm label: #failed.
"asm int3."		
		proxy primitiveFail.
		
		asm 
			leave;
			leave;  " on failure, we do leave twice, because 
		#primLeave:stackPtr:contextOop:returnValue:primitiveMethod:
		creates own stack frame, and jumps to callback leave entry point
		but we want to return straight to VM" 
			ret.
	].

