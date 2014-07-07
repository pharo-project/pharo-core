jumpForward: distance
	"Supported up to 32768 currently. If you need more, rewrite this method."

	distance = 0 ifTrue: [^ self].  "no-op"
	
	distance <= 8 ifTrue: [
		self nextPut: ((Bytecodes at: #shortJumpForward) at: distance) ].
	
	distance >= 32768 ifTrue: [ self jumpTooBig: 'jump forward' ].
	
	self pushExtB: distance // 256.
	self nextPut: (Bytecodes at: #extendedUnconditionalJump).
	self nextPut: distance \\ 256