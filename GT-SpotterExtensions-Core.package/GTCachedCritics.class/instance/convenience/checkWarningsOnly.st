checkWarningsOnly
	self ruleFilter: [ :each | each severity = #warning ]