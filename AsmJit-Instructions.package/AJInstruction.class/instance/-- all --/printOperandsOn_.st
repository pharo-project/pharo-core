printOperandsOn: aStream 
	(operands notNil
			and: [operands isEmpty not])
		ifTrue: [aStream space; nextPut: $(.
			operands
				do: [ :operand | operand printAsOperandOn: aStream]
				separatedBy: [aStream space].
			aStream nextPut: $)]