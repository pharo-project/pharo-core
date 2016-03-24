makeIndirectCall: anExternalFunction
	anExternalFunction setHandle: ((ExternalAddress 
		loadSymbol: anExternalFunction name
		module: anExternalFunction module)
		pointerAt: 1).
		