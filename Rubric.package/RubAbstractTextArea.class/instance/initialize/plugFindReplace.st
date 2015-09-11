plugFindReplace
	self announcer when:  MorphGotFocus send: #whenTextAreaGotFocus: to: RubFindReplaceService default.	
	self announcer when:  MorphLostFocus send: #whenTextAreaLostFocus: to: RubFindReplaceService default.	
	self announcer when:  RubSelectionChanged send: #whenTextAreaSelectionChanged: to: RubFindReplaceService default.	
	RubFindReplaceService default announcer weak when:  RubFindTextChanged  send: #whenFindTextChanged: to: self

