testArithmetic

	| ts |
	ts := timestamp - 123 days.  	"9 September 1999, 11:55 am"
	ts := ts - 1056 seconds.			"9 September 1999, 11:37:24 am"
	ts := ts + 123 days.				"10 January 2000, 11:37:24 am"
	ts := ts + 1056 seconds .			"10 January 2000, 11:55 am"
	self
		assert: ts  = timestamp.

	