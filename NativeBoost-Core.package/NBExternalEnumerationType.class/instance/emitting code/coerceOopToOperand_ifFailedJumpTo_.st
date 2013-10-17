coerceOopToOperand: gen ifFailedJumpTo: aLabel
	"coerce a object - oop , provided by loader and then put a result into an appropriate 
	operand (memory/register), answer that operand"

	| asm proxy oop class |
	self assert: pointerArity = 0.
	asm := gen asm.
	proxy := gen proxy.
	oop := gen reserveTemp.
	class := gen reserveTemp.
	asm mov: asm EAX to: oop.
	gen proxy fetchClassOf: oop.
	asm mov: asm EAX to: class.
	gen emitFetchClass: self objectClass.
	asm
		cmp: asm EAX with: class;
		jne: aLabel.
	proxy fetchPointer: self valueIvarIndex ofObject: oop.	"value ivar"
	self representationType coerceOopToOperand: gen ifFailedJumpTo: aLabel.
	asm push: asm EAX.
	gen releaseTemps: 2