ReadStream subclass: #InflateStream
	instanceVariableNames: 'state bitBuf bitPos source sourcePos sourceLimit litTable distTable sourceStream crc'
	classVariableNames: 'BlockProceedBit BlockTypes FixedDistCodes FixedLitCodes MaxBits StateNewBlock StateNoMoreData'
	poolDictionaries: ''
	category: 'Compression-Streams'