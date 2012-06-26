class
sharedPools 
	self exists ifFalse: [^ nil].
	^ self realClass sharedPools