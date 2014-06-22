okToDiscardEdits 
	^ self canDiscardEdits  or: [self promptForCancel]