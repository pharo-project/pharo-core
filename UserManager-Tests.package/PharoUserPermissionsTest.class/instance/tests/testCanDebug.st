testCanDebug
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canDebug.
	
	user canDebug:true.
	
	self assert: user canDebug.