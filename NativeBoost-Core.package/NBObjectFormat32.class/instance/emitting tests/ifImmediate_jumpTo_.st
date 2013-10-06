ifImmediate: aLocation jumpTo: aLabel
	"Jump to aLabel, if the OOP in aLocation is that of an immediate smallinteger"
	asm decorateWith: '#jumpTo:ifImmediate::' 
	during: [ asm 
				test: aLocation with: 1;
				jnz: aLabel ]