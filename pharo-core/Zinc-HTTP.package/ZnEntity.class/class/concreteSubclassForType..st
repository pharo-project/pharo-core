private
concreteSubclassForType: mimeType
	"Answer the concrete ZnEntity subclass that handles mimeType"
	
	^ self allSubclasses 
		detect: [ :each | 
			each designatedMimeType = mimeType ]
		ifNone: [ 
			mimeType isBinary 
				ifTrue: [ self byteArrayEntityClass ] 
				ifFalse: [ self stringEntityClass ] ]
