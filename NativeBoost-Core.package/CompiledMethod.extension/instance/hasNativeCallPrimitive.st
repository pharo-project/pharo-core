*NativeBoost-Core
hasNativeCallPrimitive
	"Answer true if receiver has following primitive:
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin [error:....]>
	"
	^ ((self primitive = 117) and: [  | lit |  lit := self literalAt: 1. 
			lit first = #NativeBoostPlugin and: [ lit second == #primitiveNativeCall]])