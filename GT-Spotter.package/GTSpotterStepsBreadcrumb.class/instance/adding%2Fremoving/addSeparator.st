addSeparator
	|separator|
	separator := self newSeparator.
	self themer spotterThemer breadcrumbSeparatorStyleFor: separator.
	self band addBrickBack: separator