pushRemoteTemp: remoteTempIndex inVectorAt: tempVectorIndex
	stack addLast: ((tempVars at: tempVectorIndex + 1) remoteTemps at: remoteTempIndex + 1)