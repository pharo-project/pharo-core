"protocol: printing"
columnsFor: anEntry
	"Answer the array of contexts."
	| method classLocation receiverClass |
	 
	method := anEntry home method.
	classLocation := method methodClass.
	receiverClass := anEntry receiver class.
	
	"If the receiver is differen from the implementor, show the original method implementor"
	classLocation = receiverClass
		ifTrue: [ classLocation := classLocation name ]
		ifFalse: [ 
			classLocation := receiverClass name, '(', classLocation name, ')' ].
	
	anEntry isBlockContext
		ifTrue: [ classLocation := '[...] in ', classLocation ].
		
	^ {classLocation. method selector asString}