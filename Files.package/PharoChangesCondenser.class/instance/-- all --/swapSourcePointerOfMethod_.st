swapSourcePointerOfMethod: method

	remoteStringMap at: method ifPresent: [ :remoteString |
		method setSourcePointer: remoteString sourcePointer ]