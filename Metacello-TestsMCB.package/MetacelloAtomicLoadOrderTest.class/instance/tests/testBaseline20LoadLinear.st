testBaseline20LoadLinear

	| project version |
	loadType := #linear.
	project := self project.
	version := project version: '2.0-baseline'.
	self should: [ version load ] raise: Warning
