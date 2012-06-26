*FuelFileSystem
next: count
	| result |
	result := ByteArray new: count.
	handle at: position read: result startingAt: 1 count: count.
	position := position + count.
 	^ result