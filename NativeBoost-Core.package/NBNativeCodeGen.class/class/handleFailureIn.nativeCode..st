error handling
handleFailureIn: aContext nativeCode: aBlock

	| method lastError |

	"Note: make sure that #lastError are sent first, no guarantee that we won't be preempted before
	but this is best we can do if method is not using extended primitive pragma with error code"
	
	lastError := self getErrorFrom: aContext lastError: NativeBoost lastError.
	method := aContext method.

	"install native code and retry the send"
	lastError = ErrNoNativeCodeInMethod
		ifTrue: [ ^ self generateCode: aBlock andRetry: aContext ].

	"ok, we're out of options, signal an error here"
	^ self signalError: lastError
