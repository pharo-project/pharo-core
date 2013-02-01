as yet unclassified
testMovableStuff
	"test that if native code calls a VM function which triggers
	a full gc and relocates a native code, it will survive the move,
	
	a native code should return a difference between old and new primitive method,
	in case if its moved, the difference will be nonzero"
	
	| code |

	code := self createMoveTestCode.
	" we should not crash here ;) "
	^ (1 to: 10) collect: 
		[:each| 
			Array new: (Random new nextInt: 100). 
			self install: code into: (self class methodDict at: #movableStub).
		  
			self movableStub  
		]
	
	