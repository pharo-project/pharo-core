read: n
	| buffer |
	buffer := ByteArray new: n.
	^ self read: n into: buffer startingAt: 1.