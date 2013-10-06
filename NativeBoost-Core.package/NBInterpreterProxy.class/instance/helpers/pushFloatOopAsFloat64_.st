pushFloatOopAsFloat64: oop

	" input - oop , and operand, pointing to a Oop
	output: 32-bit floating-point value pushed on stack
	clobbers: EAX, ECX"

	Smalltalk compactClassesArray indexOf: Float ifAbsent: [
		"if Float is not compact class, do the hard way "
		self floatValueOf: oop.
		asm sub: (asm ESP) with: 8.
		asm fstp: asm ESP ptr64.
		^ self.
		].

	self verifyCompactClassOf: oop is: Float.
	objectFormat floatsMatchingPlatform ifFalse: [
		asm 
			push: EAX ptr + (self baseHeaderSize);
			push: EAX ptr + (self baseHeaderSize+4) ]
	ifTrue: [
		asm 
			push: EAX ptr + (self baseHeaderSize+4);
			push: EAX ptr + (self baseHeaderSize) ]
