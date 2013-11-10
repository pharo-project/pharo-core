browseSenders

	self item ifNotNil: [ :method | | selector |
				selector := method selector.
			 	SystemNavigation new browseSendersOf: selector name: 'Senders of ', selector asString autoSelect: selector asString].