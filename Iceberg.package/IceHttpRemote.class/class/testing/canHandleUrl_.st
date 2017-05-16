canHandleUrl: aRepositoryUrl
	^ (aRepositoryUrl beginsWith: self protocolID, '://') 