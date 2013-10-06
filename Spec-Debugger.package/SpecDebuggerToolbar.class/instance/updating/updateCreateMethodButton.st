updateCreateMethodButton

	self hasCreateMethodAction ifTrue: [  
		self createMethodButton enabled: self shouldEnableCreateMethodButton ]