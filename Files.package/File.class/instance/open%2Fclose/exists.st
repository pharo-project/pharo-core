exists

	| handle |
	"We open it for read. If the returned handle is nil, the file could not be opened"
	handle := (self class named: name) basicOpenForWrite: false.
	handle ifNil: [^ false].
	self primClose: handle.
	^ true