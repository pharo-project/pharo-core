activate
	self activateHelp
		ifTrue: [  ^ self ].
		
	(self hasOption: 'from-file')
		ifTrue: [ self loadUpdatesFromFile ]
		ifFalse: [ self loadUpdates ].

	Smalltalk snapshot: true andQuit: true.