testing
testLiteralSymbols
		
	((32 to: 126) collect: [:ascii | Character value: ascii]) ,
	#(':x:yourself' '::' 'x:yourself' '123' 'x0:1:2:' 'x.y.z' '1abc' 'a1b0c2' ' x' 'x ' '+x-y' '||' '--' '++' '+-' '+/-' '-/+' '<|>' '#x' '()' '[]' '{}' '')
		do: [:str |
			self assert: (self class evaluatorClass evaluate: str asSymbol printString) = str asSymbol
				description: 'in all case, a Symbol must be printed in an interpretable fashion']