performDoit

	textpane hasUnacceptedEdits ifTrue: [
		textpane accept ].
	
	viewport widget class compilerClass new 
			evaluate: textpane getText 
			in: nil
			to: viewport widget
			notifying: nil
			ifFail: [self halt. self flash. ^ nil]
			logged: false.
	
	viewport widget changed. 
