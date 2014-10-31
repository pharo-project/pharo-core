testCanEditUser
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canEditUser.
	
	user canEditUser:true.
	
	self assert: user canEditUser.