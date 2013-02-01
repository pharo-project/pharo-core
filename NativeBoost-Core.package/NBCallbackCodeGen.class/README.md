The generated callback code does following:

1. Trunk
1.0. Each callback instance has unique trunk code, which is installed into external memory during callback initialization.
1.1. An external function makes a call to trunk address.
1.2. Trunk code sets the globally registered callback index to ECX register and jumps to callback entry code.

2. Entering callback 

2.1. saves the VM's execution state (stack/frame pointers, reenterInterpreter jump buffer). See #saveExecutionState.
2.2. fetching the callback oop for index passed from trunk.
2.3. coercing the callback function arguments to their smalltalk equivalent and creates an array with them. See #emitArgumentsCoercion.
2.4. synthesizes a fresh method context which is an activation of #pvtEnter:stackPointer:primitiveMethod: 
	and swaps the active context with synthesized context. See #activateCallbackContext: .

2.5. increments a global callback counter value. See #incrementCallbackCounter.
2.6. enters an interpreter loop by calling VM's #enterSmalltalkExecutiveImplementation function.

3. Leaving callback.

3.1. A leave procedure starts from method: #primLeave:stackPtr:contextOop:returnValue:primitiveMethod: , which
simply jumps to provided leave address, a code, generated for leaving from given callback.

3.2. Coerce the return value from smalltalk object to it's C equivalent. See #generateCallbackLeaveCodeFor:leaveAddr:.
3.3. Swaps a currently active context with one which were before entering callback
3.4. jumps to #returnToC label in callback entry code
3.5. sets the current C stack frame back to callback enter procedure.
3.6. restores the VM execution state (an opposite to 2.1) , see #restoreExecutionState.
3.7. decrements global callback counter.
3.8. returns to external function
