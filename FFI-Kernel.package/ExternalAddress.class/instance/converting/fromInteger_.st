fromInteger: address
	"set my handle to point at address."
	"Do we really need this? bf 2/21/2001 23:48"

	| pointer |
	pointer := ByteArray new: 4.
	pointer unsignedLongAt: 1 put: address.
	self basicAt: 1 put: (pointer byteAt: 1);
		basicAt: 2 put: (pointer byteAt: 2);
		basicAt: 3 put: (pointer byteAt: 3);
		basicAt: 4 put: (pointer byteAt: 4)
