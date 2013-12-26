addSpecialFields: elements

	elements add: (DynamicEyeElement 
		host: self object 
		label: 'hex' 
		value: [ self object printStringRadix: 16 ]).
			
	elements add: (DynamicEyeElement 
		host: self object 
		label: 'octal' 
		value: [ self object printStringRadix: 8 ]).
			
	elements add: (DynamicEyeElement 
		host: self object 
		label: 'binary' 
		value: [ self object printStringRadix: 2 ]).
			
	(self object between: 0 and: 16r10FFFF)
		ifTrue: [ 
			elements add: (DynamicEyeElement 
				host: self object 
				label: 'character' 
				value: [ self object asCharacter printString ]) ]