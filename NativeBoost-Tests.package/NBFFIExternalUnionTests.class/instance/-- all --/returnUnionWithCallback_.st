returnUnionWithCallback: aCallback
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnionWithCallback (NBQSortCallback aCallback) ) 
		emit: [:gen :proxy :asm |
			self return4Bytes: asm.
		 ]
	