isConnected
	^stream notNil
		and: [stream isConnected]