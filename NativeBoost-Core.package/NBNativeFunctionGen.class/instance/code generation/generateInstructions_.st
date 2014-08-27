generateInstructions: aFunctionBodyBlock
	
	| instructions |
	
	options at: #optNonMovable put: true.  "native functions are non-movable code"
		
	self prepareArguments.
	
	aFunctionBodyBlock cull: self cull: proxy cull: asm.

	self epilogue.
	
	instructions := asm prepareInstructions.
	
	self optDebug ifTrue: [ self halt ].
	
	^ instructions

