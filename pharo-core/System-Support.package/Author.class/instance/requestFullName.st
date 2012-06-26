ui-requests
requestFullName
	| initialAnswer |
	initialAnswer := fullName isEmptyOrNil
				ifTrue: ['FirstnameLastname' translated]
				ifFalse: [fullName].
	self checkAndSetFullNameWith: ( UIManager default
				request: self messagePrompt
				initialAnswer: initialAnswer
				title: 'Author identification' translated)