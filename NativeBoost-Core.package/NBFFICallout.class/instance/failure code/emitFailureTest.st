emitFailureTest
	"emit call to InterpreterProxy>>failed to check if there's everything ok
	(usually done before making a call) "

	coercionMayFail ifTrue: [
		proxy ifFailedJumpTo: self failedLabel ].
