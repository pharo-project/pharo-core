value: anObject
	| oldValue |
	
	lock ifTrue: [ ^ self ].
	lock := true.
	oldValue := value.
	value := anObject.
	 [ self valueChanged: oldValue ] ensure: [ lock := false ].
	^ value