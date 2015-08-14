quitSession
	| save |
	save := self confirm: 'Save changes before quitting?' translated orCancel: [ ^ self ].
	save 
		ifTrue: [Smalltalk snapshot: true andQuit: true] 
		ifFalse: [Smalltalk snapshot: false andQuit: true]
 