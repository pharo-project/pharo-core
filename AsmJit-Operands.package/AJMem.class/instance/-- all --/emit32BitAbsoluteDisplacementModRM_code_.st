emit32BitAbsoluteDisplacementModRM: emitter code: rCode
	self hasIndex
		ifTrue: [ 
			self assert: index index ~= RIDESP.	" ESP/RSP"
			emitter emitMod: 0 reg: rCode rm: 4.
			emitter emitScale: shift index: index index base: 5 ]
		ifFalse: [ emitter emitMod: 0 reg: rCode rm: 5 ].
		
	self hasLabel
		ifTrue: [ 
			"X86 uses absolute addressing model, all relative addresses will be
			 relocated to absolute ones."
			"target is label"
			target
				addRelocationAt: emitter offset
				displacement: displacement
				absolute: true
				size: 4.
			emitter emitInt32: 0 ]
		ifFalse: [ 
			" Absolute address"
			displacement emitUsing: emitter size: 4 ]