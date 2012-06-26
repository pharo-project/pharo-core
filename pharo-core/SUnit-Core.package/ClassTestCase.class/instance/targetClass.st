private
targetClass
	[ ^ self classToBeTested ]
		on: Error
		do: [ 
			| className |
			className := self class name asText copyFrom: 0 to: self class name size - 4.
			^ Smalltalk globals at: className asString asSymbol ]