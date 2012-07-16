accessing
dispatchOwnerKeystroke: aKeyEvent
	morph owner 
		ifNil: [ ^ self ].
	morph owner kmDispatcher dispatch: KMBuffer uniqueInstance buffer