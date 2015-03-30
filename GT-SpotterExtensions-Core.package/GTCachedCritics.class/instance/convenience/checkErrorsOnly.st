checkErrorsOnly
	self ruleFilter: [ :each | each severity = #error ]