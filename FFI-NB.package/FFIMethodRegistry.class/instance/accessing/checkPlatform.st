checkPlatform
	OSPlatform current == self lastActivePlatform ifTrue: [ ^ self ].
	
	self compiledMethods do: #recompile.
	self compiledMethods removeAll.
	lastActivePlatform := OSPlatform current