converting
mustBeBooleanIn: context
	"context is the where the non-boolean error occurred. Rewind context to before jump then raise error."

	| proceedValue |
	context skipBackBeforeJump.
	proceedValue := NonBooleanReceiver new
		object: self;
		signal: 'proceed for truth.'.
	^ proceedValue ~~ false