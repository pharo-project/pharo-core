printing
storeOn: aStream
	"store machine code to binary stream"
	machineCode ifNotNil: [
		aStream nextPutAll: machineCode   
		]