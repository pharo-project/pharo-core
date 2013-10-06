lineAndDeltaXAtIndex: anIndex
	| line x i deltaX |
	line := ByteArray new: 4.
	x := ByteArray new: 4.
	self primIndex: anIndex toLine: line x: x trailing: 0.
	i := line unsignedLongAt: 1 bigEndian: Smalltalk isBigEndian.
	deltaX := (x unsignedLongAt: 1 bigEndian: Smalltalk isBigEndian) / self pangoScale  .
	^ i + 1 -> (deltaX/7) rounded 