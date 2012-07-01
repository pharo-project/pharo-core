private
isFailToken: anObject
	^ anObject class == Array and: [ anObject size = 2 and: [(anObject at: 1) == PrimitiveFailToken]]