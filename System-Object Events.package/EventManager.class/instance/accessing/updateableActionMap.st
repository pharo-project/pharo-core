updateableActionMap
	actionMap 
		ifNil: [ actionMap := self createActionMap ].
	^actionMap 
	