squeak protocol
printOn: aStream 
	"Print receiver's date and time on aStream."

	aStream 
		nextPutAll: self date printString;
		space;
		nextPutAll: self time printString.