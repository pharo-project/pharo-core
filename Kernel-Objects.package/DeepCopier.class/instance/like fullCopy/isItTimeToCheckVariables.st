isItTimeToCheckVariables

	| now isIt |
	NextVariableCheckTime ifNil: [
		NextVariableCheckTime := Time totalSeconds.
		^ true].
	now := Time totalSeconds.
	isIt := NextVariableCheckTime < now.
	isIt ifTrue: ["update time for next check"
		NextVariableCheckTime := now + self intervalForChecks].
	^isIt
