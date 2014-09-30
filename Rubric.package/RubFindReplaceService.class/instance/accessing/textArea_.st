textArea: aTextArea
	textArea := aTextArea.
	aTextArea announcer subscribe: RubFindReplaceWindowRequired  send: #whenFindReplaceWindowRequired: to: self. 
