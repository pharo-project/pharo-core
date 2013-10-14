testBaseline10LoadLinear

	| project version |
	loadType := #linear.
	project := self project.
	version := project version: '1.0-baseline'.
	self should: [ version load ] raise: Warning
