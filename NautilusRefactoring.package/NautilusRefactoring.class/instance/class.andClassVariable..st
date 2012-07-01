display
class: aClass andClassVariable: aBlock
	| variables index variable class |
	
	variables := aClass theNonMetaClass allClassVarNames asArray sort.
	index := UIManager default chooseFrom: variables.
	variable := variables at: index ifAbsent: [ ^ nil ].
	class := aClass theNonMetaClass whichClassDefinesClassVar: variable.
	^ aBlock value: class value: variable