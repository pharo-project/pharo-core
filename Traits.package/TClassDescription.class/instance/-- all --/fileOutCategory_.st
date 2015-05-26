fileOutCategory: catName 

	| internalStream |
	internalStream := (String new: 1000) writeStream.
	internalStream header; timeStamp.
	self fileOutCategory: catName on: internalStream moveSource: false toFile: 0.
	internalStream trailer.

	^ FileStream writeSourceCodeFrom: internalStream baseName: (self name , '-' , catName) isSt: true.