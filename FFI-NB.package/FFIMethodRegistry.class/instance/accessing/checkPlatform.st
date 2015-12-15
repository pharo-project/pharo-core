checkPlatform
	OSPlatform current == self lastActivePlatform ifTrue: [ ^ self ].
	[ self reset ]	
	ensure: [ lastActivePlatform := OSPlatform current ]