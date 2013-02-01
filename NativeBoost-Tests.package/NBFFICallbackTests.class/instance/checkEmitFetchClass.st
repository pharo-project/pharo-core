as yet unclassified
checkEmitFetchClass
"
	checker for fetching the class code emitting
"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	

	^ self nbCallout
		function: #(oop  ())
		emit: [:gen |
			gen emitFetchClass: NBExternalAddress
			]