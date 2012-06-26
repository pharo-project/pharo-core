dispatching
dispatchKeystroke: aKeyEvent
	KMLog log: aKeyEvent printString, String cr.
	self matchEvent: aKeyEvent.
	aKeyEvent wasHandled
		ifTrue: [ 
			self target clearOwnerBuffers.
			^ self ].
	self target dispatchOwnerKeystroke: aKeyEvent.