readOnlyStream
	"Answer a read-only stream on the selected file. For the various stream-reading services."
	self halt.
	^ FileStream readOnlyFileNamed: self reference fullName