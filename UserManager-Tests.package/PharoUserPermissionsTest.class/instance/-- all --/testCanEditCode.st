testCanEditCode
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canEditCode.
	
	user canEditCode:true.
	
	self assert: user canEditCode.