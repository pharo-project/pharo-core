stackValue: index storeIn: aReg
		
	(index isInteger and: [self canUseStackPointer]) ifTrue: [
		
		asm decorateWith: 'InterpreterProxy>>stackValue:' , index asString during:  [ 
		asm mov: self stackPointer to: aReg.
		
		objectFormat stackGrowsDown 
			ifTrue: [
				asm mov: aReg ptr + (self oopSize*index) to: aReg]
			ifFalse: [
				asm mov: aReg ptr - (self oopSize*index) to: aReg].
		^ aReg
	]].

	self error: 'Not available. (And should not reach here)'