shutDown: quitting 
	quitting ifFalse: [ ^ self ].
	(current notNil and: [ self clearCacheOnShutdown ])
		ifTrue:[ 
			self current removeAll.
			current := nil ]