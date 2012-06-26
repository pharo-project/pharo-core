public
contents
	| size contents |
	size := handle size.
	contents := ByteArray new: size.
	handle at: 1 read: contents startingAt: 1 count: size.
	^ contents