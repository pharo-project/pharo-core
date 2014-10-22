testUsername
	| user |
	user := PharoUser username: 'user'.
	
	self assert: user username equals: 'user'.