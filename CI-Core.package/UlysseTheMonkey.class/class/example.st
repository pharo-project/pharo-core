example
example
	| tracker changeLoader issue |
	
	tracker := GoogleIssueTracker pharo.
	
	tracker authenticate: 'USERNAME@gmail.com' with: 'PASSWORD'.

	issue := tracker issue: 4839.
	
	changeLoader := issue load