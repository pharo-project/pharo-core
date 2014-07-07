pushSmallInteger: anInteger
	| highBits |
	"Push 0 and Push 1 are handled in the push literal method.
	Push Integer #iiiiiiii (+ Extend B * 256, where bbbbbbbb = sddddddd, e.g. -32768 = i=0, a=0, s=1)
	Why restrict the range to 16 bits signed integer, else it wastes memory compared to a push literal bytecode."
	(anInteger < 0 or: [anInteger > 255]) ifTrue: [
		highBits := anInteger >> 8.
		self
			nextPut: (Bytecodes at: #extensionB);
			nextPut: (highBits >= 0 ifTrue: [highBits] ifFalse: [highBits + 256]) ].
	self 
		nextPut: (Bytecodes at: #extendedPushInteger);
		nextPut: (anInteger bitAnd: 255).