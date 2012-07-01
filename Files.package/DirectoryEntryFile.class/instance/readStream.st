stream access
readStream
	"Answer a FileStream on my contents that can be read, but not written."
	^ directory readOnlyFileNamed: self name