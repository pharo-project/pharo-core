eventRecorderVersion
	^ self infoAt: #eventRecorderVersion ifAbsent: [ GTEventPacking new version ]