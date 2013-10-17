testAbsolutePortErrorFix
	
	Url absoluteFromText: 'http://swikis.ddo.jp:8823/'.

	self should: [Url absoluteFromText: 'http://swikis.ddo.jp:-1/'] raise: Error.
	self should: [Url absoluteFromText: 'http://swikis.ddo.jp:65536/'] raise: Error.
	self should: [Url absoluteFromText: 'http://swikis.ddo.jp:auau/'] raise: Error.