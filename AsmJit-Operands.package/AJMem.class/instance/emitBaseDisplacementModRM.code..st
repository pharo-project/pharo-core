emitting
emitBaseDisplacementModRM: emitter code: rCode
	| mod |
	
	self base isRip
		ifTrue: [ 
			emitter emitMod: 0 reg: rCode rm: 2r101.
			displacement emitUsing: emitter size: 4.
			^ self ]. 
		
	mod := 0.
	displacement isZero
		ifFalse: [ 
			mod := displacement isInt8 ifTrue: [ 1 ] ifFalse: [ 2 ]].
		
	self base index == RIDESP
		ifTrue: [ 
			"ESP/RSP/R12"
			emitter emitMod: mod reg: rCode rm: RIDESP.
			emitter emitScale: 0 index: RIDESP base: RIDESP ]
		ifFalse: [ 
			(self base index ~= RIDEBP and: [ displacement isZero ])
				ifTrue: [ 
					"just base, and not EBP/RBP/R13 "
					^ emitter emitMod: 0 reg: rCode rm: base index ].
			"force emitting displacement"
			mod = 0ifTrue: [ mod := 1 ].
			emitter emitMod: mod reg: rCode rm: base index ].
			
	mod = 1 ifTrue: [ displacement emitUsing: emitter size: 1 ].
	mod = 2 ifTrue: [ displacement emitUsing: emitter size: 4 ].