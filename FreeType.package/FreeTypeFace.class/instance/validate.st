validation
validate
	"If the receiver is not valid (has a nil handle), then create the 
	receiver to obtain a handle and load the receiver's fields"
	
	self isValid ifFalse: [self create]