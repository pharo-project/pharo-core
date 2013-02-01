as yet unclassified
checkCallbackAddress:  nativeCallbackAddr

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	

	^ self nbCallout function: #(ulong  (NBExternalAddress nativeCallbackAddr))
		emit: [:gen | 	gen asm pop: EAX ] 
"			options: #( - optAllowByteArraysPtr +optAllowExternalAddressPtr  ) "