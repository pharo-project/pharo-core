handleFailureInJit: aContext nativeCode: aBlock

	| method lastError |

	"Note: make sure that #lastError are sent first, no guarantee that we won't be preempted before
	but this is best we can do if method is not using extended primitive pragma with error code"
	
	lastError := self getErrorFromJit: aContext.
	method := aContext method.

	lastError = ErrRunningViaInterpreter ifTrue: [
		"a method contains native code, but executed by interpreter "
		method forceJIT ifFalse: [ self error: 'Failed to JIT the compiled method. Try reducing it''s size ' ].
		^ self retrySend: aContext
		].
	"install native code and retry the send"
	(lastError = ErrNoNativeCodeInMethod or: [ lastError isNil ] )
		ifTrue: [ ^ self generateCode: aBlock andRetry: aContext ].

	"ok, we're out of options, signal an error here"
	^ self signalError: lastError
