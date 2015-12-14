emitArgument: aBuilder context: aContext objectClass: objectClass
	"If argument is an object, I need to send value of instVar handle instead it self"
	self 
		emitArgument: aBuilder 
		context: aContext 
		objectClass: objectClass 
		instVarName: #handle