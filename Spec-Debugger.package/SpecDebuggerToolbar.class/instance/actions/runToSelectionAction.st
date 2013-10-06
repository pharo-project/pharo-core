runToSelectionAction

	self okToChange ifTrue: [  
		self session 
			runToSelection: self debugger code getSelection 
			inContext: self currentContext ]
