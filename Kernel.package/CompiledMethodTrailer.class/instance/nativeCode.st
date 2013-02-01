accessing
nativeCode
	kind = #NativeCodeTrailer ifFalse: [ ^ nil ].
	^ data at: 2
