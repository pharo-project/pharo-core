textView
	| v |
	v := textModel newScrolledText
		withRuler: RubWorkspaceBar new;
		beWrapped;
		yourself.
	v announcer subscribe: RubTextAccepted send: #whenTextAccepted: to: self.
	^ v