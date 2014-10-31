testCanSaveImage
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canSaveImage.
	
	user canSaveImage:true.
	
	self assert: user canSaveImage.