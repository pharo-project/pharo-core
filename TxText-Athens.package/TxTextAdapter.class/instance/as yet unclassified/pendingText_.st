pendingText: aText
1halt.
	self editorDo: [ :e | 
		e insert: aText ]