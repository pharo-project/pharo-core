initializeBuffers
	"The maximum payload message length of a TLS record is 16Kb,
	add a margin for the header and trailer."
	
	readBuffer := ZdcIOBuffer onByteArrayOfSize: 16 * 1024.
	writeBuffer := ZdcIOBuffer onByteArrayOfSize: 4 * 1024.
	in := ByteArray new: 4096.
	out := ByteArray new: (16 + 1) * 1024
