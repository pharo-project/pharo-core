class: aClass andInstVariable: aBlock
	| variables index variable class |
	
	variables := aClass instanceVariables asArray sort.
	index := UIManager default chooseFrom: variables.
	variable := variables at: index ifAbsent: [ ^ nil ].
	class := aClass whichClassDefinesInstVar: variable.
	class := class isMeta not
				ifTrue: [ RBClass existingNamed: class name ] 
				ifFalse: [ RBMetaclass existingNamed: class theNonMetaClass name ].
	class model: environment.
	^ aBlock value: class value: variable