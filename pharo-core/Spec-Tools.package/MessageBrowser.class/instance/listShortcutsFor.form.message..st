initialization
listShortcutsFor: event form: source message: method

	event keyString = '<Cmd-b>'			ifTrue: [ ^ Smalltalk tools browser fullOnClass: method methodClass selector: method selector ].
	event keyString = '<Cmd-i>'			ifTrue: [ ^ method inspect ].
	event keyString = '<Cmd-x>'			ifTrue: [ ^ model removeMethod: method inClass: method methodClass ].
	event keyString = '<Cmd-n>'			ifTrue: [ ^ model browseSendersOfMessagesFrom: method selector ].
	event keyString = '<Cmd-m>'			ifTrue: [ ^ model browseMessagesFrom: method selector ].
	event keyString = '<Cmd-N>'			ifTrue: [ ^ model browseClassRefsOf: method methodClass ].
	event keyString = '<Cmd-v>'			ifTrue: [ ^ model browseVersionsFrom: method compiledMethod ].
	^ false