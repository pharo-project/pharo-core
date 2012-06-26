*Tools
removeUnsentMessagesWithProgressBarInClass: aClass
	self
		doWithProgressBar: [:class :selector| 
			class remove: selector] 
		forUnsentMessagesInClass: aClass