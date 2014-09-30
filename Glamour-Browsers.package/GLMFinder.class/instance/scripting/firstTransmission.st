firstTransmission
	^ firstTransmission ifNil: [
		firstTransmission := GLMTransmission new ensureReplacePresentationsStrategy ]