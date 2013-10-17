abstractClass
	| detector subclassResponsibilitySymbol |
	detector := self new.
	detector name: 'References an abstract class'.
	detector resultClass: RBClassEnvironment.
	subclassResponsibilitySymbol := 'subclassResponsibility' asSymbol.
	detector classBlock: 
			[:context :result | 
			(context selectedClass whichSelectorsReferTo: subclassResponsibilitySymbol)
				isEmpty ifFalse: 
						[(context
							uses: (Smalltalk associationAt: context selectedClass name ifAbsent: [nil]))
								ifTrue: [result addClass: context selectedClass]]].
	^detector