plugFindReplace
	self announcer subscribe:  MorphGotFocus send: #whenTextAreaGotFocus: to: RubFindReplaceService default.	
	self announcer subscribe:  MorphLostFocus send: #whenTextAreaLostFocus: to: RubFindReplaceService default.	
	self announcer subscribe:  RubSelectionChanged send: #whenTextAreaSelectionChanged: to: RubFindReplaceService default.	
	RubFindReplaceService default announcer weak subscribe:  RubFindTextChanged  send: #whenFindTextChanged: to: self

