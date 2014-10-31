testCanShowMorphHalo
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canShowMorphHalo.
	
	user canShowMorphHalo:true.
	
	self assert: user canShowMorphHalo.