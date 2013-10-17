browseSendersOf: aSelector name: labelString autoSelect: autoSelectString
	
	^ self
		browseMessageList: (self allCallsOn: aSelector)
		name: labelString
		autoSelect: autoSelectString