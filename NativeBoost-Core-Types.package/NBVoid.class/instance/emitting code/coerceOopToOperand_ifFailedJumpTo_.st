coerceOopToOperand: gen ifFailedJumpTo: aLabel

	"coerce a object - oop , provided by loader and then put a result into an appropriate 
	operand (memory/register), answer that operand"
	
	pointerArity = 0 ifTrue: [ ^ self .  "returning void, do nothing " ].
	
	self shouldBeImplemented 