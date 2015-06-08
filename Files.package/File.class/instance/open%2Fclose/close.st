close
	"Close this file."

	fileHandle ifNotNil: [
		self primClose: fileHandle.
		self unregister.
		fileHandle := nil].
