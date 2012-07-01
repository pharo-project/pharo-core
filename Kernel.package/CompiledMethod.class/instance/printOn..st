printing
printOn: aStream 
	"Overrides method inherited from the byte arrayed collection."

	aStream nextPut: $(; print: self methodClass; nextPutAll: '>>'; nextPutAll: self selector storeString; space; nextPut: $".
	self printNameOn: aStream. 
	aStream nextPut: $(; print: self identityHash; nextPut: $); nextPut: $"; nextPut: $)