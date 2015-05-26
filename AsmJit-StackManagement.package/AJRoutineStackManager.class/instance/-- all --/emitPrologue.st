emitPrologue

	noStackFrame == true ifTrue: [ ^self ]. 
	instructions do: [:each |
		each setPrologue: (assembler instructionsFor: [ | numBytes |
			assembler 
				push: assembler EBP;
				mov: assembler ESP to: assembler EBP.
				
			numBytes := extraStackBytes.
			numBytes := numBytes + (maxTemps * assembler wordSize ).
			 
			numBytes > 0 ifTrue: [
				(assembler 
					sub: assembler ESP with: numBytes) annotation:
						extraStackBytes asString , ' extra bytes + ' ,
						maxTemps asString , ' temps'
				]			
			]).
		]
