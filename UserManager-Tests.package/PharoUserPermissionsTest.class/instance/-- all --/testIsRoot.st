testIsRoot
	| user |
	
	user:= PharoUser username:'user'.
	
	self deny: user canBrowse.
	self deny: user canDebug.
	self deny: user canDropOSFile.
	self deny: user canEditCode.
	self deny: user canEditUser.
	self deny: user canEvaluateCode.
	self deny: user canInspect.
	self deny: user canRunStartupScript.
	self deny: user canSaveImage.
	self deny: user canShowMorphHalo.
	
	user isRoot:true.
	
	self assert: user canBrowse.
	self assert: user canDebug.
	self assert: user canDropOSFile.
	self assert: user canEditCode.
	self assert: user canEditUser.
	self assert: user canEvaluateCode.
	self assert: user canInspect.
	self assert: user canRunStartupScript.
	self assert: user canSaveImage.
	self assert: user canShowMorphHalo.