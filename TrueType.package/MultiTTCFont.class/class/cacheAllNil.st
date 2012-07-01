as yet unclassified
cacheAllNil
"
	self cacheAllNil
"
	self allInstances do: [:inst |
		inst cache do: [:e |
			e third ifNotNil: [^ false].
		].
	].

	^ true.
