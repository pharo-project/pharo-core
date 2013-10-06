callInterpreter

	"call the 'callInterpreter' VM function "
	
	| fn |
	
	fn := NativeBoost loadFunction: #callInterpret from: ''.
	self assert: (fn ~= 0).
	asm mov: fn asUImm to: EAX.
	asm call: EAX.