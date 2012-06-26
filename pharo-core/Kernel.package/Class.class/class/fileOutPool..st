fileIn/Out
fileOutPool: aString
	"file out the global pool named aString"
	
	| internalStream |
	internalStream := (String new: 1000) writeStream.
	self new fileOutPool: (self environment at: aString asSymbol) onFileStream: internalStream.

	FileStream writeSourceCodeFrom: internalStream baseName: aString isSt: true.