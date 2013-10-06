generateInstructions: aFunctionBodyBlock
	
	| instructions |
	
	options add: #optNonMovable.  "native functions are non-movable code"
		
	self prepareArguments.
	
	aFunctionBodyBlock cull: self cull: proxy cull: asm.

	self epilogue.
	
	instructions := asm prepareInstructions.
	
	self optDebug ifTrue: [ self halt ].
	
	^ instructions

