returnUnionUnionInt: aN
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnionWithUnion (int  aN) ) 
		emit: [:gen :proxy :asm |
			self return4Bytes: asm.
		]
	