*Tools
unsentMessagesWithProgressBarInClass: aClass
	| unsentMessages |
	unsentMessages := Set new.
	self doWithProgressBar: [:class :selector| 
			unsentMessages add: (self createMethodNamed: selector realParent: class)] 
		forUnsentMessagesInClass: aClass.
	^unsentMessages