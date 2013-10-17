willJumpIfTrue 
	"Answer whether the next bytecode is a jump-if-true."
 
	| byte |
	byte := self method at: pc.
	^ byte between: 168 and: 171