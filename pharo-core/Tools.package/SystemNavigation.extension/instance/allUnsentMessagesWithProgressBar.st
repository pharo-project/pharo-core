*Tools
allUnsentMessagesWithProgressBar

	| unsentMessages |
	unsentMessages := Set new.
	self doWithProgressBarForAllUnsentMessages: [:class :selector| 
			unsentMessages add: (self createMethodNamed: selector realParent: class)].
	^unsentMessages