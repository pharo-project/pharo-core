textArea: aTextArea
	textAreaHolder at: 1 put: aTextArea.
	aTextArea announcer subscribe: RubFindReplaceWindowRequired send: #whenFindReplaceWindowRequired: to: self. 
