testCanRunStartupScript
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canRunStartupScript.
	
	user canRunStartupScript:true.
	
	self assert: user canRunStartupScript.