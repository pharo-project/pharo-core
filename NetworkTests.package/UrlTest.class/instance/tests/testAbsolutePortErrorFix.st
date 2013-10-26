testAbsolutePortErrorFix
	
	'http://swikis.ddo.jp:8823/' asUrl.

	self should: ['http://swikis.ddo.jp:-1/' asUrl] raise: Error.
	self should: ['http://swikis.ddo.jp:65536/' asUrl] raise: Error.
	self should: ['http://swikis.ddo.jp:auau/' asUrl] raise: Error.