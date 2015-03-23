detect: aBlock ifNone: aBlock2
	^ self detect: aBlock ifFound: [ :each | each ] ifNone: aBlock2