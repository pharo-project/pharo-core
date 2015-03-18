settingsButtonIconStyleFor: aBrick state: aBoolean
	aBoolean
		ifTrue: [ aBrick normalImage: Smalltalk ui icons glamorousPreferences ]
		ifFalse: [ aBrick normalImage: Smalltalk ui icons glamorousPreferences ].
	aBrick changed.