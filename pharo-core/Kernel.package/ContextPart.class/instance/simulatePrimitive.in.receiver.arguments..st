private
simulatePrimitive: primitiveIndex in: method receiver: receiver arguments: arguments
	| key simulator |
	
	key := 	primitiveIndex = 117 ifTrue: [ | lit |
		lit := method literalAt: 1.
		{  lit second. lit first }   "prim name, module name "
	] ifFalse: [ primitiveIndex ].
	
	simulator := self class specialPrimitiveSimulators at: key ifAbsent: [
		^  primitiveIndex = 117 "named primitives"
				ifTrue:[
					self withoutPrimitiveTryNamedPrimitiveIn: method for: receiver withArgs: arguments.
					"this using primitive 218, which doesn't works as expected... 
					self tryNamedPrimitiveIn: method for: receiver withArgs: arguments " ]
				ifFalse:[receiver tryPrimitive: primitiveIndex withArgs: arguments]
	]. 
	
	^ simulator simulatePrimitiveFor: method receiver: receiver arguments: arguments context: self