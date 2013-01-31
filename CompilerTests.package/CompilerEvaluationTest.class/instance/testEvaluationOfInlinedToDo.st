testing
testEvaluationOfInlinedToDo
	"Whether inlined or not, #to:do: should return the same value"
	| inlinedResult notInlinedResult |
	inlinedResult := Compiler new
				evaluate: '1+1 to: 0 do: [:i | ]'
				in: nil
				to: nil
				notifying: nil 
				ifFail: [^ #failedDoit]
				logged: false.
	notInlinedResult := Compiler new
				evaluate: '| aBlock | aBlock := [:i | ]. 1+1 to: 0 do: aBlock'
				in: nil
				to: nil
				notifying: nil 
				ifFail: [^ #failedDoit]
				logged: false.
	self assert: inlinedResult = notInlinedResult