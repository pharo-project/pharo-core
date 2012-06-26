method changes
infoFromRemoval: selector

	^ (methodChanges at: selector ifAbsent: [^ nil])
		methodInfoFromRemoval

