privateGenerateSuperClassFor: class

	| superclassName subclasses |
	superclassName := self request: 'Enter new superclass name:'.
	superclassName isEmptyOrNil ifTrue: [ ^ nil ].
	subclasses := self
						chooseMultipleFrom: class subclasses
						title: 'Select subclasses of ' , superclassName , ':'.
						
	subclasses ifNil: [ ^ self ].					
	
	^ RBChildrenToSiblingsRefactoring 
		model: environment
		name: superclassName
		class: class
		subclasses: subclasses