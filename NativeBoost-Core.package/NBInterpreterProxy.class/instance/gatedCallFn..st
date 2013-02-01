call
gatedCallFn: aFunctionOrName
	
	| fn gate |
	gen optNonMovable ifTrue: [
		"a non-movable code don't needs to use gate"
		^ self callFn: aFunctionOrName
		].
	
	fn := aFunctionOrName.
	aFunctionOrName isString  ifTrue: [ fn := self functions at: aFunctionOrName ].

	gate := NativeBoost callgateFunctionAddress.
	fn checkVersion.

	gen optProxyLabels ifTrue: [
		asm label: (asm uniqueLabelName: 'gated_', fn name).
		].

	"push an address of function to call"	
	self canUseDirectProxyFnAddress ifTrue: [ 
		asm 
			push: (fn address asUImm32 annotation: fn name).
	] ifFalse: [
		asm
			mov: (self class interpreterProxyAddress asUImm32 annotation: 'interpreterProxy address') to: EAX;
			mov: ((EAX ptr + (fn index * self pointerSize)) annotation: fn name) to: EAX;
			push: EAX
	].

	asm 
		mov: (gate asUImm32 annotation: 'Call gate')  to: EAX;
		call: EAX.

	usedGate := true.