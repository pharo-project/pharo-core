testCanDropOSFile
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canDropOSFile.
	
	user canDropOSFile:true.
	
	self assert: user canDropOSFile.