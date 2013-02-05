initialization
listShortcutsFor: event form: source message: method

	event keyString = '<Cmd-b>'
		ifTrue: [ ^ self browseMethod ].
	event keyString = '<Cmd-i>'
		ifTrue: [ ^ self inspectMethod ].
	event keyString = '<Cmd-x>'
		ifTrue: [ ^ self removeMethods ].
	event keyString = '<Cmd-n>'
		ifTrue: [ ^ self browseSendersOfMessage ].
	event keyString = '<Cmd-m>'
		ifTrue: [ ^ self browseMessages ].
	event keyString = '<Cmd-N>'
		ifTrue: [ ^ self browseClassRefs ].
	event keyString = '<Cmd-v>'
		ifTrue: [ ^ self browseVersions ].
	^ false