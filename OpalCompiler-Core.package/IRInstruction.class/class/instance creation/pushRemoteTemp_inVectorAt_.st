pushRemoteTemp: aName inVectorAt: nameOfVector
	^ IRRemoteTempAccess new
		name: aName;
		tempVectorName: nameOfVector;
		store: false;
		yourself.