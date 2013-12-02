browseSenders

	self item ifNotNil: [ :selector |
		SystemNavigation new browseSendersOf: selector name: 'Senders of ', selector autoSelect: selector].