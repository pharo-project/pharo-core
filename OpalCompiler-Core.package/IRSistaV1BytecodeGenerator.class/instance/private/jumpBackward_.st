jumpBackward: distance
	"Currently support up to -32768. Rewrite it if you need more"

	| dist |
	dist := 32768 - distance - 2.
	dist < 0 ifTrue: [self jumpTooBig: 'back jump'].
	self pushExtB: 128 + (dist // 256).
	self nextPut: (Bytecodes at: #extendedUnconditionalJump).
	self nextPut: dist \\ 256.
