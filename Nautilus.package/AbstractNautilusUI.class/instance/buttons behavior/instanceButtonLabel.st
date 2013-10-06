instanceButtonLabel
	| hasMethods label |
	
	hasMethods := false.
	self selectedClass ifNotNil: [:class | 
		hasMethods := class theMetaClass methodDict notEmpty ].

	label := 'Class side' asMorph.	
	hasMethods 
		ifTrue: [ label emphasis: 1 ]
		ifFalse: [ label emphasis: 2 ].
	
	^ label