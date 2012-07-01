*tools-spotlight-extensions
selectedAndClose
	"Answers selected index (if exists) and delete morph"
	| index | 
	
	^menuMorph 
		ifNotNil: [ 
			index := menuMorph selected.
			[ (index notNil and: [ context model notEmpty ])
				ifTrue:  [ context model completionAt: index ]
				ifFalse: [ nil ] ]
			ensure: [ menuMorph delete ] ]