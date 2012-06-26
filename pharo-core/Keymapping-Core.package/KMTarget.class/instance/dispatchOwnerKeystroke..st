accessing
dispatchOwnerKeystroke: aKeyEvent
	morph owner 
		ifNil: [ ^ self ].
	morph owner dispatchKeystrokeForEvent: aKeyEvent