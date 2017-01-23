globalName

	^ globalName ifNil: [
		globalName := OmFileStore globalNameFrom: directoryEntry ]