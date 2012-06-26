printing
storeLiteralsOn: aStream forClass: aBehavior
	"Store the literals referenced by the receiver on aStream, each terminated by a space."

	| literal |
	2 to: self numLiterals + 1 do:
		[:index |
		 aBehavior storeLiteral: (self objectAt: index) on: aStream.
		 aStream space]