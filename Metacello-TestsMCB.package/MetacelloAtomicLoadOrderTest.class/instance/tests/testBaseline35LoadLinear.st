testBaseline35LoadLinear

	| project version wc |
	loadType := #linear.
	project := self project.
	version := project version: '3.5-baseline'.
	self should: [ version load ] raise: Warning
