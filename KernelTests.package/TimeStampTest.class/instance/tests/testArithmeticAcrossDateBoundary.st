testArithmeticAcrossDateBoundary

	| ts |
	ts := timestamp - ((11*3600) + (55*60) + 1) seconds.
	self
		assert: ts = ('1-9-2000 11:59:59 pm' asTimeStamp).

	