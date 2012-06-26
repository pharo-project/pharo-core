tests
testResponsibilitySt
	| args |
	args := self argumentsWith: #('/foo/bar/myScript.st').
	self assert: (DefaultCommandLineHandler isResponsibleFor: args).
	self assert: (BasicCodeLoader isResponsibleFor: args).
	self deny: (EvaluateCommandLineHandler isResponsibleFor: args).
	
	args := self argumentsWith: #('st' '/foo/bar/myScript.st').
	self assert: (DefaultCommandLineHandler isResponsibleFor: args).
	self assert: (BasicCodeLoader isResponsibleFor: args).
	self deny: (EvaluateCommandLineHandler isResponsibleFor: args).