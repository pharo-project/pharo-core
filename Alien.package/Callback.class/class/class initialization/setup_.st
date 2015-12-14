setup: resuming
	"Callback setup: false"
	| processor prevMap |
	processor := (SmalltalkImage current getSystemAttribute: 1003) asLowercase.
	(processor first = $i and: [processor = 'intel' or: ['i#86' match: processor]]) ifTrue:
		[ABI := 'IA32'] ifFalse:
	[(processor = 'arm' or: [(processor beginsWith: 'armv') and: [processor fifth <= $7]]) ifTrue:
		[ABI='ARM32'] ifFalse:
	[(processor first = $x and: ['x86#64*' match: processor]) ifTrue:
		[ABI := 'X86-64'] ifFalse:
	[ABI='UNKNOWN']]].
	FlushThunkToCallbackMap := false.
	(WeakArray hasWeakDependent: self) ifFalse:
		[WeakArray addWeakDependent: self].
	prevMap := resuming ifFalse: [ThunkToCallbackMap].
	ThunkToCallbackMap := WeakValueDictionary new.
	prevMap ifNotNil:
		[prevMap keysAndValuesDo:
			[:thunkAddress :callback|
			ThunkToCallbackMap at: thunkAddress put: callback]]