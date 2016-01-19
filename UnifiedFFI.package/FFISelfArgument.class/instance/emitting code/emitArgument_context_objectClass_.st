emitArgument: aBuilder context: aContext objectClass: objectClass
	"If argument is an object, I need to send value of instVar handle instead it self"
	aBuilder pushInstVar: (objectClass 
		instVarIndexFor: #handle 
		ifAbsent: [ self error: 'No handle instVar' ])