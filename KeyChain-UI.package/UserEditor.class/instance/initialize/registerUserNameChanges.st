registerUserNameChanges

	userName
		whenTextChanged: [ :text | 
			self window ifNotNil: [:w | w toolbar okButton enabled: (self isValidUsername: text)] .
			self setTitle: text ]