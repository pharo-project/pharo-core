oldVersionTextToDisplay

	| class |
	class := Smalltalk 
				at: className asSymbol
				ifAbsent: [ ^ super oldVersionTextToDisplay ].
				
	^ class methodDict 
			at: self selector
			ifPresent: [:method | method sourceCode ]
			ifAbsent: [ super oldVersionTextToDisplay ]