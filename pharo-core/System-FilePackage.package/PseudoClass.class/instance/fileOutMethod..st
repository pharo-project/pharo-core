filein/fileout
fileOutMethod: selector
	| internalStream |

	internalStream := (String new: 1000) writeStream.

	self fileOutMethods: (Array with: selector) on: internalStream.

	FileStream writeSourceCodeFrom: internalStream baseName: (self name , '-' , (selector copyReplaceAll: ':' with: '')) isSt: true