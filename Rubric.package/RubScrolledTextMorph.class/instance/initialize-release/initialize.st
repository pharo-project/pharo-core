initialize
	super initialize.
	self clipSubmorphs: true.
	enabled := true.
	rulers := SortedCollection sortBlock: [ :a :b | b level > a level ].
	self addMorph: (scrollPane := self newScrollPane).
	self announcer subscribe: RubConfigurationChange send: #whenConfigurationChanged: to: self.
	self textArea announcer subscribe: RubCanceEditRequested send: #whenCanceEditRequested: to: self.
	self textArea announcer subscribe: MorphGotFocus send: #whenGotForcus: to: self.
	self textArea announcer subscribe: MorphLostFocus send: #whenLostForcus: to: self.
	self textArea announcer subscribe: RubTextAcceptRequest  send: #whenTextAcceptRequest: to: self.
	self textArea announcer subscribe: RubTextChanged send: #whenTextChangedInTextArea: to: self.
	self textArea announcer subscribe: RubReturnEntered send: #whenReturnEnteredInTextArea: to: self.
	self textArea announcer subscribe: RubKeystroke send: #whenKeystrokeInTextArea: to: self.
	self withAdornment.


	self borderStyle: self borderStyleToUse	
