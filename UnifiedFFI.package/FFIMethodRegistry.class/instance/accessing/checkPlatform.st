checkPlatform
	OSPlatform current == self lastActivePlatform ifTrue: [ ^ self ].
	self reset.	
	lastActivePlatform := OSPlatform current.