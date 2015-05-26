testCanBrowse
	| user |
	user := PharoUser username: 'user'.
	
	self deny: user canBrowse.
	
	user canBrowse:true.
	
	self assert: user canBrowse.