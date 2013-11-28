koClass
	| name klass |
	
	name := obsoletion className.
	name ifNil: [ ^ nil ].
	
	klass := KomitClass trackedClass: name.
				
	obsoletion addOperation: self on: klass.
		
	self isClassPatch
		ifTrue: [ klass modified: true ].
		
	^ klass