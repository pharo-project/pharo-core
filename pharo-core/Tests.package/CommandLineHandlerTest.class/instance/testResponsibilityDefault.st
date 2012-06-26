tests
testResponsibilityDefault
	| args |
	args := self argumentsWith: #('--help').
	self assert: (DefaultCommandLineHandler isResponsibleFor: args).
	self deny: (BasicCodeLoader isResponsibleFor: args).
	self deny: (EvaluateCommandLineHandler isResponsibleFor: args).