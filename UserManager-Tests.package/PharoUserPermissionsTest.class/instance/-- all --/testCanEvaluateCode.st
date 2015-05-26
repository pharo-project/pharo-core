testCanEvaluateCode
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canEvaluateCode.
	
	user canEvaluateCode:true.
	
	self assert: user canEvaluateCode.