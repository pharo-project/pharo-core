code generation
generateCallToAddress: aFunctionAddressBlock
	"Generate a foreign function callout using given function address"

	^ self generate: [:gen | | fnAddress |

		fnAddress := aFunctionAddressBlock cull: self cull: proxy cull: asm.
		
		fnAddress ifNil: [ self error: 'function unavailable' ].
		
		self optMayGC 
			ifTrue: [
				"a GC may be triggered during external call. Make sure we making a call via gate "
				asm 
					push: fnAddress asUImm32;
					mov: NativeBoost callgateFunctionAddress asUImm32 to: EAX;
					call: EAX ]
			ifFalse: [
				asm mov: fnAddress asUImm32 to: EAX;
				call: EAX.  ] 
		]
	