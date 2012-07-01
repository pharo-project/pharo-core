initialization
setListMenu

	listModel menu: [:menu || message |
		message := self selectedMessage.
		menu
			add: 'Browse full... (b)'
			target: Smalltalk tools browser
			selector: #fullOnClass:selector:
			argumentList: {message methodClass. message selector };
			add: 'Inspect method... (i)'
			target: message
			selector: #inspect;
			addLine;
			add: 'Remove method... (x)'
			target: model
			selector: #removeMethod:inClass:
			argumentList: {message. message methodClass.};
			add: 'Toggle Breakpoint'
			target: model
			selector: #toggleBreakOnEntryIn:
			argument: message;
			addLine;
			add: 'Senders of... (n)'
			target: model
			selector: #browseSendersOfMessagesFrom:
			argument: message selector;
			add: 'Implementors of... (m)'
			target: model
			selector: #browseMessagesFrom:
			argument: message selector ;
			add: 'Users of... (N)'
			target: model
			selector: #browseClassRefsOf:
			argument: message methodClass;
			add: 'Versions... (v)'
			target: model
			selector: #browseVersionsFrom:
			argument: message.
		menu]