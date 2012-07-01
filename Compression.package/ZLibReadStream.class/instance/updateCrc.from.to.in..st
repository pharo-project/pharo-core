crc
updateCrc: oldCrc from: start to: stop in: aCollection
	"Answer an updated CRC for the range of bytes in aCollection"
	^ZLibWriteStream updateAdler32: oldCrc from: start to: stop in: aCollection.