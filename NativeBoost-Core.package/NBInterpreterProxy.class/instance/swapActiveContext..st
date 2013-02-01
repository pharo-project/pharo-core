VM-extras
swapActiveContext: newContext

	"call the 'swapActiveContext' VM function "
	
	| fn |
	
	fn := NativeBoost loadFunction: 'swapActiveContext' from: ''.
	self assert: (fn ~= 0).
	asm push: newContext.
	asm mov: fn asUImm to: EAX.
	asm call: EAX;
	add: ESP with: 4.
	
