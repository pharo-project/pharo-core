other
isCacheAllNil
"
	self cacheAllNil
"
	self allInstances do: [:inst |
		inst cache do: [:e |
			e ifNotNil: [^ false].
		].
	].

	^ true.
