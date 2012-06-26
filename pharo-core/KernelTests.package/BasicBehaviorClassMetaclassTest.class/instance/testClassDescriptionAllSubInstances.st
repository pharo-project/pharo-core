testing
testClassDescriptionAllSubInstances
	"self run: #testClassDescriptionAllSubInstances"

	| cdNo clsNo metaclsNo |
	
	Smalltalk garbageCollect. 
	cdNo := ClassDescription allSubInstances size.
	clsNo := Class allSubInstances size .
	metaclsNo := Metaclass allSubInstances size.

	self assert: cdNo = (clsNo + metaclsNo).

	
	
	



	
	

	