checkErrorsAndWarningsOnly
	self ruleFilter: [ :each | each severity = #warning or: [ each severity = #error ] ]