imageVersion
	^ self infoAt: #imageVersion ifAbsent: [ SystemVersion current version ]