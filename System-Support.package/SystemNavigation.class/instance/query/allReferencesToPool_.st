allReferencesToPool: aPool
	"Answer all the references to variable aPool"
	
	| list |
	list := OrderedCollection new.
	self allClassesDo: [:cls|
				cls selectorsAndMethodsDo: [:sel :meth| | ref |
					ref := meth literals detect:
							[:lit|
								(lit isVariableBinding 
									and: [lit key notNil]) 
										and: [(aPool bindingOf: lit key) notNil ]] ifNone: [nil].
					ref ifNotNil: [ list add: (self createMethodNamed: sel realParent: cls) ]]].
	^list