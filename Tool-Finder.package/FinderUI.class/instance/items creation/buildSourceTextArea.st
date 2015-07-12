buildSourceTextArea
	sourceTextArea := self sourceTextModel newScrolledText
		beForSmalltalkCode;
		beWrapped;
		yourself.
	sourceTextArea menuProvider: self selector: #msgPaneMenu:shifted:.
	sourceTextArea textArea announcer weak when: RubTextAcceptRequest send: #whenTextAcceptedInView: to: self.
	self updateSourceCode.
	^ sourceTextArea