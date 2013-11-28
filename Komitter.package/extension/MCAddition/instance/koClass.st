koClass
	| klass name |
	
	name := definition className.
	name ifNil: [ ^ nil ].
	klass := KomitClass trackedClass: name.
				
	definition addOperation: self on: klass.
		
	self isClassPatch
		ifTrue: [ klass added: true ].
		
	^ klass