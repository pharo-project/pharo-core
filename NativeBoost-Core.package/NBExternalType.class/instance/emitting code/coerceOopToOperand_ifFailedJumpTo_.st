coerceOopToOperand: gen ifFailedJumpTo: aLabel

	"coerce a object - oop , provided by loader and then put a result into an appropriate 
	operand (memory/register), answer that operand"
	
	self subclassResponsibility 