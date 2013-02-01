debugger support
simulatePrimitiveFor: aMethod receiver: recvr arguments: args context: ctx

	^ self tryRunNativeCode: aMethod for: recvr withArgs: args