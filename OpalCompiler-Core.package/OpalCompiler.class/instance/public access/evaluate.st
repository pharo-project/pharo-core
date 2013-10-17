evaluate
	"Compiles the sourceStream into a parse tree, then generates code into
	 a method. If aContext is not nil, the text can refer to temporaries in that
	 context (the Debugger uses this). If aRequestor is not nil, then it will receive
	 a notify:at: message before the attempt to evaluate is aborted. Finally, the 
	 compiled method is invoked from here via withArgs:executeMethod:, hence
	 the system no longer creates Doit method litter on errors."

	| methodNode method value selectedSource itsSelection itsSelectionString |
	self
		class:
			(context 
				ifNil: [ receiver class ]
				ifNotNil: [ context method methodClass ]).
	self noPattern: true.
	selectedSource := ((self compilationContext requestor respondsTo: #selection)
		and: [ 
			(itsSelection := self compilationContext requestor selection) notNil
				and: [ (itsSelectionString := itsSelection asString) isEmptyOrNil not ] ])
		ifTrue: [ itsSelectionString ]
		ifFalse: [ source ].
	self source: selectedSource.
	methodNode := self translate.
	method := self compilationContext interactive
		ifTrue: [ methodNode generateWithSource ]
		ifFalse: [ methodNode generate ].
	value := receiver withArgs: (context ifNil: [ #() ] ifNotNil: [ {context} ]) executeMethod: method.
	self compilationContext logged
		ifTrue: [ SystemAnnouncer uniqueInstance evaluated: selectedSource contents context: context ].
	^ value