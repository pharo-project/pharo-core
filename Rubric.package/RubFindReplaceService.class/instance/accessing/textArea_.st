textArea: aTextArea
	textAreaHolder at: 1 put: aTextArea.
	aTextArea announcer weak 
		when: RubFindReplaceWindowRequired send: #whenFindReplaceWindowRequired: to: self. 
