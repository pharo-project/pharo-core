accessing
platformId
	kind = #NativeCodeTrailer ifFalse: [ ^ nil ].
	^ data at: 1
