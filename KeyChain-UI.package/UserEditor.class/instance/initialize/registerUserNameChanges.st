registerUserNameChanges

	userName
		whenTextChanged: [ :text | 
			self window ifNotNil: [:w | w okButtonEnabled: (self isValidUsername: text)] .
			self setTitle: text ]