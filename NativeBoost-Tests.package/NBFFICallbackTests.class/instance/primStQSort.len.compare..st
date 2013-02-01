qsort callouts
primStQSort: base len: size compare: qsortCallback

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		options: #( optMayGC );
		function: #(void qsort (NBExternalAddress base, ulong size, 1, NBQSortCallback qsortCallback))
		module: NativeBoost CLibrary