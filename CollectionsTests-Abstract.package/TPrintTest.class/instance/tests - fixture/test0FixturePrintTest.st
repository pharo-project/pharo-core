test0FixturePrintTest

	self shouldnt: [self nonEmpty ] raise: Error.
	self deny: self nonEmpty  isEmpty.