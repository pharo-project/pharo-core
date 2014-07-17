sharedVariablesFromString: aString 
	sharedVariables :=  (aString subStrings: ' ') collect: [:x | x asSymbol => GlobalVariable]. 