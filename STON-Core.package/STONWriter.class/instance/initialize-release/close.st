close
	writeStream ifNotNil: [
		writeStream close.
		writeStream := nil ]