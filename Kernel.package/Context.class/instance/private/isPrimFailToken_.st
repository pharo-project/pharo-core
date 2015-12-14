isPrimFailToken: anObject
	^ anObject class == Array
	  and: [anObject size = 2
	  and: [anObject first == PrimitiveFailToken]]