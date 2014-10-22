testCanInspect
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canInspect.
	
	user canInspect:true.
	
	self assert: user canInspect.