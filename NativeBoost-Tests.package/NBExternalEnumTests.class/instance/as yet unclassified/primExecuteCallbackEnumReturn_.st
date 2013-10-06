primExecuteCallbackEnumReturn: anEnumCb

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	"This code misssing the stack alignment before doing callback.
	most probably is the reason of crashing VM."
	
	self halt.
	^ NBFFICallout
		cdecl: {self enumClass. {self cbClass. #anEnumCb}}
		emitCall: [ :gen :proxy :asm | 
			asm pop: asm EAX.
			asm push: 2400 asImm.
			asm call: asm EAX ]
		options: #(#optMayGC)