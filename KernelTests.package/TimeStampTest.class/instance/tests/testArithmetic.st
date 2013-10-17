testArithmetic

	| ts |
	ts := timestamp minusDays: 123.  	"9 September 1999, 11:55 am"
	ts := ts minusSeconds: 1056.			"9 September 1999, 11:37:24 am"
	ts := ts plusDays: 123.				"10 January 2000, 11:37:24 am"
	ts := ts plusSeconds: 1056.			"10 January 2000, 11:55 am"
	self
		assert: ts  = timestamp.

	