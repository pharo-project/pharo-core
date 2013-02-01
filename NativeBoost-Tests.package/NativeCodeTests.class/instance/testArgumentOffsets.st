as yet unclassified
testArgumentOffsets

	"cdecl arguments placed in reverse order,
	
	push c;
	push b;
	push a..
	
	so, c is most closer to stack frame and having smallest offset.
	"
	NBNativeFunctionGen 
		cdecl: #( int (byte a, void * b, double c) )
		emit: [:gen |
			| arg |

			arg := gen arg: #a.
			self assert: (arg isMem).
			self assert: (arg displacement value = 8).

			arg := gen arg: #b.
			self assert: (arg isMem).
			self assert: (arg displacement value = 12).

			arg := gen arg: #c.
			self assert: (arg isMem).
			self assert: (arg displacement value = 16).
			
		]