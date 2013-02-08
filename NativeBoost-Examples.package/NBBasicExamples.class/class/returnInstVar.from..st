basic-interpreter-proxy-interaction
returnInstVar: aNumber from: anObject
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( int aNumber, oop anObject ) )  
		emit: [:gen :proxy :asm |
			"aNumber -> EAX"
			asm pop: asm EAX.
			"EAX = aNumebr-1"
			asm sub: asm EAX with: 1.
			"if signed (AKA negative jump to failure)"
			asm js: 'failure'.
		
			"anObject -> EDX"
			asm pop: asm EDX.
			"EAX = anObject instVarAt: aNumber"
			proxy fetchPointer: asm EAX ofObject: asm EDX.
			asm leave; ret.
				
			asm label: 'failure'.
			proxy primitiveFail.
		]