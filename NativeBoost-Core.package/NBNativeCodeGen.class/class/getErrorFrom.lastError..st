error handling
getErrorFrom: aContext lastError: errorCode
	| lastError method |
	lastError := errorCode.
	method := aContext method.

	"Check that method has a #primitiveNativeCall, since it required by generator, and sometimes you can forget putting primitive pragma"
	(method primitive = 220 or: [
	((method primitive = 117) and: [  | lit |  lit := method literalAt: 1. 
			lit first = #NativeBoostPlugin and: [ lit second == #primitiveNativeCall]])])
		ifFalse: [ ^ ErrNoNBPrimitive ].
		
	"Check if method using an extended primitive pragma (introduced in Cog), 
	otherwise we just take an errorCode"
	(method pragmas anySatisfy: [:p | p keyword == #primitive:module:error: ])
	ifTrue: [
		"A primitive error is always the last temp (ensured by compiler) "
		lastError := aContext  tempAt: method numTemps. 
	].
	
	lastError = ErrNotEnabled ifTrue: [
		"If we cannot enable it, report an error..."
		NativeBoost enableNativeCode ifFalse: [ ^ NBNativeCodeError signal: 'Cannot enable native code execution' ].
	
		" Fake absence of native code, so then code generator will generate code and retry the call.
		Note that if you want to keep native code forever (generated once and kept forever as long as method exists), you might want to override this"
		
		lastError := ErrNoNativeCodeInMethod ].

	^ lastError 