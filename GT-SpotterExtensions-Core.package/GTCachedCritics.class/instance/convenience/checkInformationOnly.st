checkInformationOnly
	self ruleFilter: [ :each | each severity = #information ]