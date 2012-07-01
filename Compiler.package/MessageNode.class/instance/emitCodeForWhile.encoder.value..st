code generation
emitCodeForWhile: stack encoder: encoder value: forValue 
	"L1: ... Bfp(L2)|Btp(L2) ... Jmp(L1) L2: "
	| cond stmt stmtSize loopSize |
	cond := receiver.
	stmt := arguments at: 1.
	stmtSize := sizes at: 1.
	loopSize := sizes at: 2.
	cond emitCodeForEvaluatedValue: stack encoder: encoder.
	self emitCodeForBranchOn: (selector key == #whileFalse:)  "Bfp for whileTrue"
					dist: stmtSize pop: stack encoder: encoder.   "Btp for whileFalse"
	pc := encoder methodStreamPosition.
	stmt emitCodeForEvaluatedEffect: stack encoder: encoder.
	self emitCodeForJump: 0 - loopSize encoder: encoder.
	forValue ifTrue: [encoder genPushSpecialLiteral: nil. stack push: 1]