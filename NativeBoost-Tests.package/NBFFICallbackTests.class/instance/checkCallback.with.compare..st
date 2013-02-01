as yet unclassified
checkCallback: arr1 with: arr2 compare: nativeCallback

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	

	^ self nbCallout function: #(long  (NBExternalAddress nativeCallback, byte* arr1, byte* arr2 ))
		emit: [:gen |
			gen asm pop: EAX;
				call: EAX
			] 