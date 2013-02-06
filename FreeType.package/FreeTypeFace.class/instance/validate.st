validation
validate
	"If the receiver is not valid (has a nil handle), then create the 
	receiver to obtain a handle and load the receiver's fields"
	session == Smalltalk session ifFalse: [ 
		handle := nil.
		session := Smalltalk session.
		
		self create.
		 ].
	
	self isValid ifFalse: [self create]