DeflateStream subclass: #ZipWriteStream
	instanceVariableNames: 'literals distances literalFreq distanceFreq litCount matchCount encoder crc crcPosition bytesWritten'
	classVariableNames: 'VerboseLevel'
	poolDictionaries: 'ZipConstants'
	category: 'Compression-Streams'